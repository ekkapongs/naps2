using NAPS2.Tools.Project.Targets;

namespace NAPS2.Tools.Project.Installation;

public static class InstallCommand
{
    public static int Run(InstallOptions opts)
    {
        var version = ProjectHelper.GetDefaultProjectVersion();

        var constraints = new TargetConstraints
        {
            InstallersOnly = true
        };
        foreach (var target in TargetsHelper.Enumerate(opts.BuildType, opts.Platform, constraints))
        {
            switch (target.BuildType)
            {
                case BuildType.Exe:
                    ExeInstaller.Install(target.Platform, version, opts.Run, opts.Verbose);
                    break;
                case BuildType.Msi:
                    MsiInstaller.Install(target.Platform, version, opts.Run, opts.Verbose);
                    break;
            }
        }
        return 0;
    }
}