.class Lorg/luaj/vm2/LuaTable$NormalEntry;
.super Lorg/luaj/vm2/LuaTable$Entry;


# instance fields
.field private final a:Lorg/luaj/vm2/LuaValue;

.field private b:Lorg/luaj/vm2/LuaValue;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaTable$Entry;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->a:Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public key()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->a:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public keyeq(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->raweq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    return v0
.end method

.method public keyindex(I)I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->a:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0, p1}, Lorg/luaj/vm2/LuaTable;->hashSlot(Lorg/luaj/vm2/LuaValue;I)I

    move-result v0

    return v0
.end method

.method public set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-object p0
.end method

.method public toVarargs()Lorg/luaj/vm2/Varargs;
    .locals 0

    return-object p0
.end method

.method public value()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable$NormalEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
