.class Lorg/luaj/vm2/LuaTable$IntKeyEntry;
.super Lorg/luaj/vm2/LuaTable$Entry;


# instance fields
.field private final a:I

.field private b:Lorg/luaj/vm2/LuaValue;


# direct methods
.method constructor <init>(ILorg/luaj/vm2/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaTable$Entry;-><init>()V

    iput p1, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    iput-object p2, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public arraykey(I)I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public key()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public keyeq(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->raweq(I)Z

    move-result v0

    return v0
.end method

.method public keyindex(I)I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->a:I

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->hashCode(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/luaj/vm2/LuaTable;->hashmod(II)I

    move-result v0

    return v0
.end method

.method public set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-object p0
.end method

.method public value()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;->b:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
