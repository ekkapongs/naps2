﻿using NAPS2.EtoForms;
using NAPS2.EtoForms.Ui;
using NAPS2.Modules;
using Ninject;
using UnhandledExceptionEventArgs = Eto.UnhandledExceptionEventArgs;

namespace NAPS2.EntryPoints;

/// <summary>
/// The entry point logic for NAPS2.exe, the NAPS2 GUI.
/// </summary>
public static class GtkEntryPoint
{
    public static void Run(string[] args)
    {
        // Initialize Ninject (the DI framework)
        var kernel = new StandardKernel(new CommonModule(), new GtkModule(), new RecoveryModule(), new ContextModule());

        Paths.ClearTemp();

        // Set up basic application configuration
        kernel.Get<CultureHelper>().SetCulturesFromConfig();
        TaskScheduler.UnobservedTaskException += UnhandledTaskException;
        Trace.Listeners.Add(new ConsoleTraceListener());

        // Show the main form
        var application = EtoPlatform.Current.CreateApplication();
        application.UnhandledException += UnhandledException;
        var formFactory = kernel.Get<IFormFactory>();
        var desktop = formFactory.Create<DesktopForm>();
        // TODO: Clean up invoker setting
        // Invoker.Current = new WinFormsInvoker(desktop.ToNative());
        application.Run(desktop);
    }

    private static void UnhandledTaskException(object? sender, UnobservedTaskExceptionEventArgs e)
    {
        Log.FatalException("An error occurred that caused the task to terminate.", e.Exception);
        e.SetObserved();
    }

    private static void UnhandledException(object? sender, UnhandledExceptionEventArgs e)
    {
        Log.FatalException("An error occurred that caused the application to close.", e.ExceptionObject as Exception);
    }
}