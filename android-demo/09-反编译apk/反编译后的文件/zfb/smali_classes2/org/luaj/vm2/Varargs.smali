.class public abstract Lorg/luaj/vm2/Varargs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arg(I)Lorg/luaj/vm2/LuaValue;
.end method

.method public abstract arg1()Lorg/luaj/vm2/LuaValue;
.end method

.method public argcheck(ZILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-void
.end method

.method public checkboolean(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkboolean()Z

    move-result v0

    return v0
.end method

.method public checkclosure(I)Lorg/luaj/vm2/LuaClosure;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    return-object v0
.end method

.method public checkdouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->todouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public checkfunction(I)Lorg/luaj/vm2/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    return-object v0
.end method

.method public checkint(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->toint()I

    move-result v0

    return v0
.end method

.method public checkinteger(I)Lorg/luaj/vm2/LuaInteger;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkinteger()Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->tolong()J

    move-result-wide v0

    return-wide v0
.end method

.method public checknotnil(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checknotnil()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public checknumber(I)Lorg/luaj/vm2/LuaNumber;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public checkstring(I)Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public checktable(I)Lorg/luaj/vm2/LuaTable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

.method public checkthread(I)Lorg/luaj/vm2/LuaThread;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkthread()Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    return-object v0
.end method

.method public checkuserdata(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkuserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkvalue(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "value expected"

    invoke-static {p1, v0}, Lorg/luaj/vm2/LuaValue;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public eval()Lorg/luaj/vm2/Varargs;
    .locals 0

    return-object p0
.end method

.method public isTailcall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isfunction(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    return v0
.end method

.method public isnil(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    return v0
.end method

.method public isnoneornil(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isnumber(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v0

    return v0
.end method

.method public isstring(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    return v0
.end method

.method public istable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->istable()Z

    move-result v0

    return v0
.end method

.method public isthread(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isthread()Z

    move-result v0

    return v0
.end method

.method public isuserdata(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isuserdata()Z

    move-result v0

    return v0
.end method

.method public isvalue(I)Z
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract narg()I
.end method

.method public optboolean(IZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optboolean(Z)Z

    move-result v0

    return v0
.end method

.method public optclosure(ILorg/luaj/vm2/LuaClosure;)Lorg/luaj/vm2/LuaClosure;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optclosure(Lorg/luaj/vm2/LuaClosure;)Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(ID)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/luaj/vm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optfunction(ILorg/luaj/vm2/LuaFunction;)Lorg/luaj/vm2/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optfunction(Lorg/luaj/vm2/LuaFunction;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    return-object v0
.end method

.method public optint(II)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optint(I)I

    move-result v0

    return v0
.end method

.method public optinteger(ILorg/luaj/vm2/LuaInteger;)Lorg/luaj/vm2/LuaInteger;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optinteger(Lorg/luaj/vm2/LuaInteger;)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public optjstring(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optlong(IJ)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/luaj/vm2/LuaValue;->optlong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optnumber(ILorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optnumber(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optstring(ILorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optstring(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public opttable(ILorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->opttable(Lorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

.method public optthread(ILorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/LuaThread;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optthread(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    return-object v0
.end method

.method public optuserdata(ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/luaj/vm2/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optuserdata(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->optuserdata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optvalue(ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public abstract subargs(I)Lorg/luaj/vm2/Varargs;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toboolean(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    return v0
.end method

.method public tobyte(I)B
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tobyte()B

    move-result v0

    return v0
.end method

.method public tochar(I)C
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tochar()C

    move-result v0

    return v0
.end method

.method public todouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public tofloat(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tofloat()F

    move-result v0

    return v0
.end method

.method public toint(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Lorg/luaj/vm2/Buffer;

    invoke-direct {v2}, Lorg/luaj/vm2/Buffer;-><init>()V

    const-string/jumbo v0, "("

    invoke-virtual {v2, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v3

    move v0, v1

    :goto_0
    if-gt v0, v3, :cond_1

    if-le v0, v1, :cond_0

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    invoke-virtual {v2}, Lorg/luaj/vm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tolong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toshort(I)S
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toshort()S

    move-result v0

    return v0
.end method

.method public touserdata(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public touserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaValue;->touserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public type(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    return v0
.end method
