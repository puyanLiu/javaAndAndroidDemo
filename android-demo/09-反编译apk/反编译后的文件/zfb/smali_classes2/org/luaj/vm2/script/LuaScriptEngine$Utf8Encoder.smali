.class final Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/io/Reader;

.field private final b:[I

.field private c:I

.field final synthetic this$0:Lorg/luaj/vm2/script/LuaScriptEngine;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/script/LuaScriptEngine;Ljava/io/Reader;)V
    .locals 1

    iput-object p1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->b:[I

    iput-object p2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->a:Ljava/io/Reader;

    return-void
.end method

.method synthetic constructor <init>(Lorg/luaj/vm2/script/LuaScriptEngine;Ljava/io/Reader;Lorg/luaj/vm2/script/LuaScriptEngine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;-><init>(Lorg/luaj/vm2/script/LuaScriptEngine;Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    iget v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->b:[I

    iget v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    aget v0, v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->b:[I

    iget v2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    aput v3, v1, v2

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->b:[I

    iget v2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    aput v3, v1, v2

    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->b:[I

    iget v2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;->c:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    aput v3, v1, v2

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0xf

    or-int/lit16 v0, v0, 0xe0

    goto :goto_0
.end method
