.class Lorg/luaj/vm2/NonTableMetatable;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/Metatable;


# instance fields
.field private final a:Lorg/luaj/vm2/LuaValue;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/NonTableMetatable;->a:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    aget-object v0, p1, p2

    return-object v0
.end method

.method public entry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-static {p1, p2}, Lorg/luaj/vm2/LuaTable;->defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public toLuaValue()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/NonTableMetatable;->a:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p1
.end method
