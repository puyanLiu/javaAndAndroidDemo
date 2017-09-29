.class public Lorg/luaj/vm2/LuaNil;
.super Lorg/luaj/vm2/LuaValue;


# static fields
.field static final _NIL:Lorg/luaj/vm2/LuaNil;

.field public static s_metatable:Lorg/luaj/vm2/LuaValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/LuaNil;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaNil;-><init>()V

    sput-object v0, Lorg/luaj/vm2/LuaNil;->_NIL:Lorg/luaj/vm2/LuaNil;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknotnil()Lorg/luaj/vm2/LuaValue;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaNil;->argerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/luaj/vm2/LuaNil;

    return v0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaNil;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public isnil()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public not()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    return-object v0
.end method

.method public optboolean(Z)Z
    .locals 0

    return p1
.end method

.method public optclosure(Lorg/luaj/vm2/LuaClosure;)Lorg/luaj/vm2/LuaClosure;
    .locals 0

    return-object p1
.end method

.method public optdouble(D)D
    .locals 0

    return-wide p1
.end method

.method public optfunction(Lorg/luaj/vm2/LuaFunction;)Lorg/luaj/vm2/LuaFunction;
    .locals 0

    return-object p1
.end method

.method public optint(I)I
    .locals 0

    return p1
.end method

.method public optinteger(Lorg/luaj/vm2/LuaInteger;)Lorg/luaj/vm2/LuaInteger;
    .locals 0

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public optlong(J)J
    .locals 0

    return-wide p1
.end method

.method public optnumber(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p1
.end method

.method public optstring(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 0

    return-object p1
.end method

.method public opttable(Lorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;
    .locals 0

    return-object p1
.end method

.method public optthread(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/LuaThread;
    .locals 0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public optvalue(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nil"

    return-object v0
.end method

.method public toboolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nil"

    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nil"

    return-object v0
.end method
