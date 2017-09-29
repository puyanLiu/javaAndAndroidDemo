.class final Lorg/luaj/vm2/LuaValue$None;
.super Lorg/luaj/vm2/LuaNil;


# static fields
.field static _NONE:Lorg/luaj/vm2/LuaValue$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/LuaValue$None;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaValue$None;-><init>()V

    sput-object v0, Lorg/luaj/vm2/LuaValue$None;->_NONE:Lorg/luaj/vm2/LuaValue$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaNil;-><init>()V

    return-void
.end method


# virtual methods
.method public final arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaValue$None;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public final arg1()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaValue$None;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public final narg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 2

    if-lez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "start must be > 0"

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue$None;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "none"

    return-object v0
.end method
