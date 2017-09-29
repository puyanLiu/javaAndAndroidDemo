.class Lorg/luaj/vm2/lib/BaseLib$StringInputStream;
.super Ljava/io/InputStream;


# instance fields
.field bytes:[B

.field final func:Lorg/luaj/vm2/LuaValue;

.field offset:I

.field remaining:I


# direct methods
.method constructor <init>(Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->func:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->func:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    iget-object v2, v1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iput-object v2, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->bytes:[B

    iget v2, v1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iput v2, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->offset:I

    iget v1, v1, Lorg/luaj/vm2/LuaString;->m_length:I

    iput v1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    iget v1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    if-lez v1, :cond_0

    :cond_2
    iget v0, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->remaining:I

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->bytes:[B

    iget v1, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;->offset:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method
