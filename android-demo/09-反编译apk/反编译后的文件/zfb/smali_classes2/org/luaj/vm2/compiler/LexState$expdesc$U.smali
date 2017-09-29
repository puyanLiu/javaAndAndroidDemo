.class Lorg/luaj/vm2/compiler/LexState$expdesc$U;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/luaj/vm2/LuaValue;

.field ind_idx:S

.field ind_t:S

.field ind_vt:S

.field info:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$200(Lorg/luaj/vm2/compiler/LexState$expdesc$U;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->a:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method static access$202(Lorg/luaj/vm2/compiler/LexState$expdesc$U;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->a:Lorg/luaj/vm2/LuaValue;

    return-object p1
.end method


# virtual methods
.method public nval()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->a:Lorg/luaj/vm2/LuaValue;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->info:I

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->a:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public setNval(Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->a:Lorg/luaj/vm2/LuaValue;

    return-void
.end method
