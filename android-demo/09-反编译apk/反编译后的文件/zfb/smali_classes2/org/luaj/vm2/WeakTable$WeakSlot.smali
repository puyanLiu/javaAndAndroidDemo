.class public abstract Lorg/luaj/vm2/WeakTable$WeakSlot;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/LuaTable$Slot;


# instance fields
.field protected key:Ljava/lang/Object;

.field protected next:Lorg/luaj/vm2/LuaTable$Slot;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/luaj/vm2/LuaTable$Slot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    iput-object p2, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    iput-object p3, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    return-void
.end method


# virtual methods
.method public add(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$Slot;->add(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongkey()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongvalue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    goto :goto_0
.end method

.method public arraykey(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract copy(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/WeakTable$WeakSlot;
.end method

.method public find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$StrongSlot;->find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public first()Lorg/luaj/vm2/LuaTable$StrongSlot;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongkey()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongvalue()Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaTable$NormalEntry;

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaTable$NormalEntry;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :goto_0
    return-object v0

    :cond_0
    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public keyeq(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$StrongSlot;->keyeq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract keyindex(I)I
.end method

.method public relink(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongkey()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongvalue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/WeakTable$WeakSlot;->copy(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/WeakTable$WeakSlot;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    goto :goto_0
.end method

.method public remove(Lorg/luaj/vm2/LuaTable$StrongSlot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongkey()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$Slot;->remove(Lorg/luaj/vm2/LuaTable$StrongSlot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Lorg/luaj/vm2/LuaTable$StrongSlot;->keyeq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$Slot;->remove(Lorg/luaj/vm2/LuaTable$StrongSlot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    goto :goto_0
.end method

.method public rest()Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lorg/luaj/vm2/LuaTable$StrongSlot;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/WeakTable$WeakSlot;->strongkey()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/luaj/vm2/LuaTable$StrongSlot;->find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/WeakTable$WeakSlot;->set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lorg/luaj/vm2/LuaTable$Slot;->set(Lorg/luaj/vm2/LuaTable$StrongSlot;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->next:Lorg/luaj/vm2/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lorg/luaj/vm2/LuaTable$Slot;->set(Lorg/luaj/vm2/LuaTable$StrongSlot;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
.end method

.method public strongkey()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    check-cast v0, Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public strongvalue()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    check-cast v0, Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
