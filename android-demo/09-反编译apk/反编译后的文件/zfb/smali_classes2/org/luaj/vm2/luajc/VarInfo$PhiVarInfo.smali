.class final Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;
.super Lorg/luaj/vm2/luajc/VarInfo;


# instance fields
.field private final a:Lorg/luaj/vm2/luajc/ProtoInfo;

.field values:[Lorg/luaj/vm2/luajc/VarInfo;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    iput-object p1, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->a:Lorg/luaj/vm2/luajc/ProtoInfo;

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;IILorg/luaj/vm2/luajc/VarInfo$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;II)V

    return-void
.end method


# virtual methods
.method protected final collectUniqueValues(Ljava/util/Set;Ljava/util/Set;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->a:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget v2, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->pc:I

    aget-object v2, v0, v2

    iget v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->pc:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->a:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->slot:I

    aget-object v0, v0, v3

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, v2, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v3, v3, v1

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->a:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v4, v4, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v5, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->slot:I

    aget-object v4, v4, v5

    iget v3, v3, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v3, v4, v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2}, Lorg/luaj/vm2/luajc/VarInfo;->collectUniqueValues(Ljava/util/Set;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final isPhiVar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final resolvePhiVariableValues()Lorg/luaj/vm2/luajc/VarInfo;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->collectUniqueValues(Ljava/util/Set;Ljava/util/Set;)V

    sget-object v0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/luajc/VarInfo;

    iget-boolean v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    iget-boolean v2, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->isreferenced:Z

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    goto :goto_0

    :cond_1
    new-array v0, v2, [Lorg/luaj/vm2/luajc/VarInfo;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v0, v4, v1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, v1

    iget-boolean v4, v0, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    iget-boolean v5, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->isreferenced:Z

    or-int/2addr v4, v5

    iput-boolean v4, v0, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/luaj/vm2/luajc/VarInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v3, p0, Lorg/luaj/vm2/luajc/VarInfo$PhiVarInfo;->values:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
