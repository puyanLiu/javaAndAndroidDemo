.class public abstract Lorg/luaj/vm2/LuaNumber;
.super Lorg/luaj/vm2/LuaValue;


# static fields
.field public static s_metatable:Lorg/luaj/vm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknumber()Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public checknumber(Ljava/lang/String;)Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public concat(Lorg/luaj/vm2/Buffer;)Lorg/luaj/vm2/Buffer;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/Buffer;->concatTo(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->concatTo(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public concatTo(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaNumber;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaNumber;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaString;->concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaNumber;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaString;->concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaNumber;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public isnumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public optnumber(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public tonumber()Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "number"

    return-object v0
.end method
