.class final Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field final w:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
