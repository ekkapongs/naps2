using NAPS2.Scan;

namespace NAPS2.ImportExport.Email.Mapi;

public class MapiDispatcher
{
    private readonly ScanningContext _scanningContext;
    private readonly IMapiWrapper _mapiWrapper;

    public MapiDispatcher(ScanningContext scanningContext)
        : this(scanningContext, new MapiWrapper(new SystemEmailClients()))
    {
    }
    
    public MapiDispatcher(ScanningContext scanningContext, IMapiWrapper mapiWrapper)
    {
        _scanningContext = scanningContext;
        _mapiWrapper = mapiWrapper;
    }

    private bool UseWorker => Environment.Is64BitProcess && PlatformCompat.Runtime.UseWorker;

    /// <summary>
    /// Sends an email described by the given message object.
    /// </summary>
    /// <param name="clientName">The MAPI client name.</param>
    /// <param name="message">The object describing the email message.</param>
    /// <returns>The MAPI return code.</returns>
    public async Task<MapiSendMailReturnCode> SendEmail(string? clientName, EmailMessage message)
    {
        if (UseWorker && !_mapiWrapper.CanLoadClient(clientName))
        {
            using var worker = _scanningContext.WorkerFactory.Create();
            return await worker.Service.SendMapiEmail(clientName, message);
        }
        return await _mapiWrapper.SendEmail(clientName, message);
    }
}