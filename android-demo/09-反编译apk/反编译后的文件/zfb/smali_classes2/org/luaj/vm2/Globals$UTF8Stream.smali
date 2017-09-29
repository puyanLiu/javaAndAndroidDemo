.class Lorg/luaj/vm2/Globals$UTF8Stream;
.super Lorg/luaj/vm2/Globals$AbstractBufferedStream;


# instance fields
.field private final a:[C

.field private final c:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lorg/luaj/vm2/Globals$AbstractBufferedStream;-><init>(I)V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->a:[C

    iput-object p1, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->c:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method protected avail()I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->i:I

    iget v2, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->j:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->j:I

    iget v1, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->c:Ljava/io/Reader;

    iget-object v2, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->a:[C

    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->a:[C

    int-to-char v0, v0

    aput-char v0, v1, v3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->a:[C

    iget-object v2, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->b:[B

    iput v3, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->i:I

    invoke-static {v1, v0, v2, v3}, Lorg/luaj/vm2/LuaString;->encodeToUtf8([CI[BI)I

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->j:I

    iget v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->j:I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Globals$UTF8Stream;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method
