.class public Lorg/luaj/vm2/ast/Variable;
.super Ljava/lang/Object;


# instance fields
.field public final definingScope:Lorg/luaj/vm2/ast/NameScope;

.field public hasassignments:Z

.field public initialValue:Lorg/luaj/vm2/LuaValue;

.field public isupvalue:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Variable;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/ast/Variable;->definingScope:Lorg/luaj/vm2/ast/NameScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/luaj/vm2/ast/NameScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Variable;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Variable;->definingScope:Lorg/luaj/vm2/ast/NameScope;

    return-void
.end method


# virtual methods
.method public isConstant()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/ast/Variable;->hasassignments:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/ast/Variable;->initialValue:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocal()Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/ast/Variable;->definingScope:Lorg/luaj/vm2/ast/NameScope;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
