.class Lorg/luaj/vm2/compiler/LexState$expdesc;
.super Ljava/lang/Object;


# instance fields
.field final f:Lorg/luaj/vm2/compiler/IntPtr;

.field k:I

.field final t:Lorg/luaj/vm2/compiler/IntPtr;

.field final u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/LexState$expdesc$U;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    new-instance v0, Lorg/luaj/vm2/compiler/IntPtr;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    new-instance v0, Lorg/luaj/vm2/compiler/IntPtr;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    return-void
.end method


# virtual methods
.method hasjumps()Z
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    iget v0, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iget-object v1, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    iget v1, v1, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(II)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    iput v1, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    iput v1, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iput p1, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->k:I

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iput p2, v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->info:I

    return-void
.end method

.method isnumeral()Z
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    iget v0, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    iget v0, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setvalue(Lorg/luaj/vm2/compiler/LexState$expdesc;)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->f:Lorg/luaj/vm2/compiler/IntPtr;

    iget v1, v1, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iput v1, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iget v0, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->k:I

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->k:I

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->t:Lorg/luaj/vm2/compiler/IntPtr;

    iget v1, v1, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iput v1, v0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    invoke-static {v1}, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->access$200(Lorg/luaj/vm2/compiler/LexState$expdesc$U;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->access$202(Lorg/luaj/vm2/compiler/LexState$expdesc$U;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-short v1, v1, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_idx:S

    iput-short v1, v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_idx:S

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-short v1, v1, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_t:S

    iput-short v1, v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_t:S

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-short v1, v1, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_vt:S

    iput-short v1, v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->ind_vt:S

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lorg/luaj/vm2/compiler/LexState$expdesc;->u:Lorg/luaj/vm2/compiler/LexState$expdesc$U;

    iget v1, v1, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->info:I

    iput v1, v0, Lorg/luaj/vm2/compiler/LexState$expdesc$U;->info:I

    return-void
.end method
