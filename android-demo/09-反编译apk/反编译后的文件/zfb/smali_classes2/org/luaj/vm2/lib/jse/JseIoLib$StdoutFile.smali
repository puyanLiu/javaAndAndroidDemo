.class final Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;
.super Lorg/luaj/vm2/lib/IoLib$File;


# instance fields
.field private final a:I

.field private final b:Lorg/luaj/vm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/IoLib$File;-><init>(Lorg/luaj/vm2/lib/IoLib;)V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->b:Lorg/luaj/vm2/lib/jse/JseIoLib;

    iput p2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->a:I

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;ILorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;I)V

    return-void
.end method

.method private final a()Ljava/io/PrintStream;
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->b:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$600(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDERR:Ljava/io/PrintStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->b:Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$700(Lorg/luaj/vm2/lib/jse/JseIoLib;)Lorg/luaj/vm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->a()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    const/4 v0, 0x0

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
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/lib/jse/JseIoLib$StdoutFile;->a()Ljava/io/PrintStream;

    move-result-object v0

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PrintStream;->write([BII)V

    return-void
.end method
