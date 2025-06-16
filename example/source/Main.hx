package;

class Main extends lime.app.Application
{
	public function new():Void
	{
		super();
	}

	public override function onWindowCreate():Void
	{
		super.onWindowCreate();

		trace("=== Build Information ===");
		trace("BOARD: " + android.os.Build.BOARD);
		trace("BOOTLOADER: " + android.os.Build.BOOTLOADER);
		trace("BRAND: " + android.os.Build.BRAND);
		trace("DEVICE: " + android.os.Build.DEVICE);
		trace("ID: " + android.os.Build.ID);
		trace("PRODUCT: " + android.os.Build.PRODUCT);
		trace("MANUFACTURER: " + android.os.Build.MANUFACTURER);
		trace("HARDWARE: " + android.os.Build.HARDWARE);
		trace("MODEL: " + android.os.Build.MODEL);
		trace("ODM_SKU: " + android.os.Build.ODM_SKU);
		trace("SKU: " + android.os.Build.SKU);
		trace("SOC_MANUFACTURER: " + android.os.Build.SOC_MANUFACTURER);
		trace("SOC_MODEL: " + android.os.Build.SOC_MODEL);
		trace("TAGS: " + android.os.Build.TAGS);
		trace("TYPE: " + android.os.Build.TYPE);
		trace("HOST: " + android.os.Build.HOST);
		trace("USER: " + android.os.Build.USER);

		trace("=== Version Information ===");
		trace("BASE_OS: " + android.os.Build.VERSION.BASE_OS);
		trace("CODENAME: " + android.os.Build.VERSION.CODENAME);
		trace("INCREMENTAL: " + android.os.Build.VERSION.INCREMENTAL);
		trace("MEDIA_PERFORMANCE_CLASS: " + android.os.Build.VERSION.MEDIA_PERFORMANCE_CLASS);
		trace("RELEASE: " + android.os.Build.VERSION.RELEASE);
		trace("SDK: " + android.os.Build.VERSION.SDK);
		trace("SDK_INT: " + android.os.Build.VERSION.SDK_INT);
		trace("PREVIEW_SDK_INT: " + android.os.Build.VERSION.PREVIEW_SDK_INT);
		trace("RELEASE_OR_CODENAME: " + android.os.Build.VERSION.RELEASE_OR_CODENAME);
		trace("RELEASE_OR_PREVIEW_DISPLAY: " + android.os.Build.VERSION.RELEASE_OR_PREVIEW_DISPLAY);
		trace("SECURITY_PATCH: " + android.os.Build.VERSION.SECURITY_PATCH);

		trace("=== Context Paths ===");
		trace("FilesDir: " + android.content.Context.getFilesDir());
		trace("ExternalFilesDir: " + android.content.Context.getExternalFilesDir());
		trace("ExternalFilesDirs: " + android.content.Context.getExternalFilesDirs());
		trace("CacheDir: " + android.content.Context.getCacheDir());
		trace("CodeCacheDir: " + android.content.Context.getCodeCacheDir());
		trace("NoBackupFilesDir: " + android.content.Context.getNoBackupFilesDir());
		trace("ExternalCacheDir: " + android.content.Context.getExternalCacheDir());
		trace("ExternalCacheDirs: " + android.content.Context.getExternalCacheDirs());
		trace("ObbDir: " + android.content.Context.getObbDir());

		trace("=== Environment Paths & States ===");
		trace("Data Directory: " + android.os.Environment.getDataDirectory());
		trace("Download Cache Directory: " + android.os.Environment.getDownloadCacheDirectory());
		trace("External Storage Directory: " + android.os.Environment.getExternalStorageDirectory());
		trace("Storage Directory: " + android.os.Environment.getStorageDirectory());
		trace("External Storage State: " + android.os.Environment.getExternalStorageState());
		trace("Root Directory: " + android.os.Environment.getRootDirectory());
		trace("External Storage Emulated: " + android.os.Environment.isExternalStorageEmulated());
		trace("External Storage Manager: " + android.os.Environment.isExternalStorageManager());
		trace("External Storage Legacy: " + android.os.Environment.isExternalStorageLegacy());
		trace("External Storage Removable: " + android.os.Environment.isExternalStorageRemovable());
	}

	public override function render(context:lime.graphics.RenderContext):Void
	{
		switch (context.type)
		{
			case CAIRO:
				context.cairo.setSourceRGB(0.75, 1, 0);
				context.cairo.paint();
			case CANVAS:
				context.canvas2D.fillStyle = '#BFFF00';
				context.canvas2D.fillRect(0, 0, window.width, window.height);
			case DOM:
				context.dom.style.backgroundColor = '#BFFF00';
			case FLASH:
				context.flash.graphics.beginFill(0xBFFF00);
				context.flash.graphics.drawRect(0, 0, window.width, window.height);
			case OPENGL | OPENGLES | WEBGL:
				context.webgl.clearColor(0.75, 1, 0, 1);
				context.webgl.clear(context.webgl.COLOR_BUFFER_BIT);
			default:
		}
	}
}
