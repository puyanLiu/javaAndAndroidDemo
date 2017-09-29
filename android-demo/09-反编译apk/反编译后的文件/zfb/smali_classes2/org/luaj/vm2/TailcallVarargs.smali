.class public Lorg/luaj/vm2/TailcallVarargs;
.super Lorg/luaj/vm2/Varargs;


# instance fields
.field private a:Lorg/luaj/vm2/LuaValue;

.field private b:Lorg/luaj/vm2/Varargs;

.field private c:Lorg/luaj/vm2/Varargs;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    invoke-virtual {p1, p2}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    invoke-static {p1, p3}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/TailcallVarargs;->eval()Lorg/luaj/vm2/Varargs;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public arg1()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/TailcallVarargs;->eval()Lorg/luaj/vm2/Varargs;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public eval()Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iget-object v1, p0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->onInvoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->isTailcall()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/luaj/vm2/TailcallVarargs;

    iget-object v1, v0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iget-object v0, v0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    iput-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    iput-object v2, p0, Lorg/luaj/vm2/TailcallVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iput-object v2, p0, Lorg/luaj/vm2/TailcallVarargs;->b:Lorg/luaj/vm2/Varargs;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    return-object v0
.end method

.method public isTailcall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public narg()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/TailcallVarargs;->eval()Lorg/luaj/vm2/Varargs;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    return v0
.end method

.method public subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/TailcallVarargs;->eval()Lorg/luaj/vm2/Varargs;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/TailcallVarargs;->c:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method
