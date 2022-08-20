using System.Windows.Forms;

namespace NAPS2.EtoForms.WinForms;

public class WinFormsInvoker : IInvoker
{
    private readonly Form _form;

    public WinFormsInvoker(Form form)
    {
        _form = form;
    }

    public void Invoke(Action action)
    {
        _form.Invoke(action);
    }

    // TODO: Maybe these can be extension methods?
    public T InvokeGet<T>(Func<T> func)
    {
        T value = default;
        Invoke(() => value = func());
        return value;
    }

    public void SafeInvoke(Action action)
    {
        try
        {
            Invoke(action);
        }
        catch (ObjectDisposedException)
        {
        }
        catch (InvalidOperationException)
        {
        }
    }
}