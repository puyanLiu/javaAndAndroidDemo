.class public Lorg/luaj/vm2/lib/jse/JseOsLib;
.super Lorg/luaj/vm2/lib/OsLib;


# static fields
.field public static EXEC_ERROR:I

.field public static EXEC_INTERRUPTED:I

.field public static EXEC_IOEXCEPTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_IOEXCEPTION:I

    const/4 v0, -0x2

    sput v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_INTERRUPTED:I

    const/4 v0, -0x3

    sput v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OsLib;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/luaj/vm2/lib/jse/JseProcess;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseOsLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v2, v2, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JseOsLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->STDERR:Ljava/io/PrintStream;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/luaj/vm2/lib/jse/JseProcess;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/jse/JseProcess;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    const-string/jumbo v1, "exit"

    invoke-static {v1}, Lorg/luaj/vm2/lib/jse/JseOsLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/jse/JseOsLib;->ZERO:Lorg/luaj/vm2/LuaNumber;

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/jse/JseOsLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_IOEXCEPTION:I

    goto :goto_0

    :catch_1
    move-exception v0

    sget v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_INTERRUPTED:I

    goto :goto_0

    :catch_2
    move-exception v0

    sget v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->EXEC_ERROR:I

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/luaj/vm2/lib/jse/JseOsLib;->NIL:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v2, "signal"

    invoke-static {v2}, Lorg/luaj/vm2/lib/jse/JseOsLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseOsLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/luaj/vm2/lib/jse/JseOsLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_1
.end method

.method protected remove(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No such file or directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to delete"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No such file or directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to delete"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected tmpname()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/luaj/vm2/lib/jse/JseOsLib;->TMP_PREFIX:Ljava/lang/String;

    sget-object v1, Lorg/luaj/vm2/lib/jse/JseOsLib;->TMP_SUFFIX:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lorg/luaj/vm2/lib/OsLib;->tmpname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
