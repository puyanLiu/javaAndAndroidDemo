.class final Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;
.super Lorg/luaj/vm2/lib/IoLib$File;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/IoLib$File;-><init>(Lorg/luaj/vm2/lib/IoLib;)V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final isclosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isstdfile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final peek()I
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$800(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$900(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v1}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$1000(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v1

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return v0
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$1100(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdinFile;->a:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$1200(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final remaining()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final seek(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setvbuf(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "file ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lorg/luaj/vm2/LuaString;)V
    .locals 0

    return-void
.end method
