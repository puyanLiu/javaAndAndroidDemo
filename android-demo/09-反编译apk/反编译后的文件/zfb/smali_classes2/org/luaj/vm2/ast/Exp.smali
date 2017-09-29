.class public abstract Lorg/luaj/vm2/ast/Exp;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static anonymousfunction(Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Exp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$AnonFuncDef;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Exp$AnonFuncDef;-><init>(Lorg/luaj/vm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;
    .locals 5

    move-object v2, p2

    move-object v1, p0

    :goto_0
    instance-of v0, v1, Lorg/luaj/vm2/ast/Exp$UnopExp;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/luaj/vm2/ast/Exp$UnopExp;

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v3

    iget v4, v0, Lorg/luaj/vm2/ast/Exp$UnopExp;->op:I

    invoke-static {v4}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v4

    if-le v3, v4, :cond_0

    iget v1, v0, Lorg/luaj/vm2/ast/Exp$UnopExp;->op:I

    iget-object v0, v0, Lorg/luaj/vm2/ast/Exp$UnopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    invoke-static {v0, p1, v2}, Lorg/luaj/vm2/ast/Exp;->binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/ast/Exp;->unaryexp(ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    instance-of v0, v1, Lorg/luaj/vm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/luaj/vm2/ast/Exp$BinopExp;

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v3

    iget v4, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    invoke-static {v4}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v3

    iget v4, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    invoke-static {v4}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->isrightassoc(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object p0, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->lhs:Lorg/luaj/vm2/ast/Exp;

    iget v1, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    invoke-static {v0, p1, v2}, Lorg/luaj/vm2/ast/Exp;->binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v2

    move p1, v1

    move-object v1, p0

    goto :goto_0

    :cond_2
    instance-of v0, v2, Lorg/luaj/vm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_4

    move-object v0, v2

    check-cast v0, Lorg/luaj/vm2/ast/Exp$BinopExp;

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v3

    iget v4, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    invoke-static {v4}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v4

    if-gt v3, v4, :cond_3

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v3

    iget v4, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    invoke-static {v4}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-static {p1}, Lorg/luaj/vm2/ast/Exp;->isrightassoc(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v2, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->lhs:Lorg/luaj/vm2/ast/Exp;

    invoke-static {v1, p1, v2}, Lorg/luaj/vm2/ast/Exp;->binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v1

    iget p1, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    iget-object v2, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/luaj/vm2/ast/Exp$BinopExp;

    invoke-direct {v0, v1, p1, v2}, Lorg/luaj/vm2/ast/Exp$BinopExp;-><init>(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)V

    goto :goto_1
.end method

.method public static constant(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/ast/Exp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$Constant;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Exp$Constant;-><init>(Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public static fieldop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp$FieldExp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$FieldExp;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Exp$FieldExp;-><init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;)V

    return-object v0
.end method

.method public static functionop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/FuncArgs;)Lorg/luaj/vm2/ast/Exp$FuncCall;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$FuncCall;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Exp$FuncCall;-><init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/FuncArgs;)V

    return-object v0
.end method

.method public static indexop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp$IndexExp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$IndexExp;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Exp$IndexExp;-><init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method

.method static isrightassoc(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public static methodop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lorg/luaj/vm2/ast/FuncArgs;)Lorg/luaj/vm2/ast/Exp$MethodCall;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$MethodCall;

    invoke-direct {v0, p0, p1, p2}, Lorg/luaj/vm2/ast/Exp$MethodCall;-><init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lorg/luaj/vm2/ast/FuncArgs;)V

    return-object v0
.end method

.method public static nameprefix(Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp$NameExp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$NameExp;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Exp$NameExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static numberconstant(Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/ast/Exp$Constant;

    invoke-static {p0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tonumber()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/luaj/vm2/ast/Exp$Constant;-><init>(Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public static parensprefix(Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp$ParensExp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$ParensExp;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Exp$ParensExp;-><init>(Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method

.method static precedence(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "precedence of bad op "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x3b -> :sswitch_0
        0x3c -> :sswitch_1
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static tableconstructor(Lorg/luaj/vm2/ast/TableConstructor;)Lorg/luaj/vm2/ast/Exp;
    .locals 0

    return-object p0
.end method

.method public static unaryexp(ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;
    .locals 3

    instance-of v0, p1, Lorg/luaj/vm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/luaj/vm2/ast/Exp$BinopExp;

    invoke-static {p0}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lorg/luaj/vm2/ast/Exp;->precedence(I)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->lhs:Lorg/luaj/vm2/ast/Exp;

    invoke-static {p0, v1}, Lorg/luaj/vm2/ast/Exp;->unaryexp(ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v1

    iget v2, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lorg/luaj/vm2/ast/Exp$BinopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    invoke-static {v1, v2, v0}, Lorg/luaj/vm2/ast/Exp;->binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/luaj/vm2/ast/Exp$UnopExp;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Exp$UnopExp;-><init>(ILorg/luaj/vm2/ast/Exp;)V

    goto :goto_0
.end method

.method public static varargs()Lorg/luaj/vm2/ast/Exp;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Exp$VarargsExp;

    invoke-direct {v0}, Lorg/luaj/vm2/ast/Exp$VarargsExp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/luaj/vm2/ast/Visitor;)V
.end method

.method public isfunccall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isvarexp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
