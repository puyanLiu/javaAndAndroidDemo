.class Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;
.super Lorg/luaj/vm2/WeakTable$WeakSlot;


# instance fields
.field private final a:I


# direct methods
.method protected constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaTable$Slot;)V
    .locals 2

    invoke-static {p1}, Lorg/luaj/vm2/WeakTable;->weaken(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/WeakTable;->weaken(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/luaj/vm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/luaj/vm2/LuaTable$Slot;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->a:I

    return-void
.end method

.method protected constructor <init>(Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;Lorg/luaj/vm2/LuaTable$Slot;)V
    .locals 2

    iget-object v0, p1, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->key:Ljava/lang/Object;

    iget-object v1, p1, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->value:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p2}, Lorg/luaj/vm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/luaj/vm2/LuaTable$Slot;)V

    iget v0, p1, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->a:I

    iput v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->a:I

    return-void
.end method


# virtual methods
.method protected copy(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/WeakTable$WeakSlot;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;-><init>(Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;Lorg/luaj/vm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public keyindex(I)I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->a:I

    invoke-static {v0, p1}, Lorg/luaj/vm2/LuaTable;->hashmod(II)I

    move-result v0

    return v0
.end method

.method public set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/WeakTable;->weaken(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public strongkey()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->key:Ljava/lang/Object;

    invoke-static {v0}, Lorg/luaj/vm2/WeakTable;->strengthen(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public strongvalue()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/luaj/vm2/WeakTable;->strengthen(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
