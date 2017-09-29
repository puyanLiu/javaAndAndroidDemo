.class public abstract Lorg/luaj/vm2/ast/Stat;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static assignment(Ljava/util/List;Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$Assign;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$Assign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static block(Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;
    .locals 0

    return-object p0
.end method

.method public static breakstat()Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$Break;

    invoke-direct {v0}, Lorg/luaj/vm2/ast/Stat$Break;-><init>()V

    return-object v0
.end method

.method public static forgeneric(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$GenericFor;

    invoke-direct {v0, p0, p1, p2}, Lorg/luaj/vm2/ast/Stat$GenericFor;-><init>(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)V

    return-object v0
.end method

.method public static fornumeric(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;
    .locals 6

    new-instance v0, Lorg/luaj/vm2/ast/Stat$NumericFor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/ast/Stat$NumericFor;-><init>(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)V

    return-object v0
.end method

.method public static functioncall(Lorg/luaj/vm2/ast/Exp$FuncCall;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$FuncCallStat;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Stat$FuncCallStat;-><init>(Lorg/luaj/vm2/ast/Exp$FuncCall;)V

    return-object v0
.end method

.method public static functiondef(Lorg/luaj/vm2/ast/FuncName;Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$FuncDef;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$FuncDef;-><init>(Lorg/luaj/vm2/ast/FuncName;Lorg/luaj/vm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static gotostat(Ljava/lang/String;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$Goto;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Stat$Goto;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ifthenelse(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;
    .locals 6

    new-instance v0, Lorg/luaj/vm2/ast/Stat$IfThenElse;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/ast/Stat$IfThenElse;-><init>(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)V

    return-object v0
.end method

.method public static labelstat(Ljava/lang/String;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$Label;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Stat$Label;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static localassignment(Ljava/util/List;Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$LocalAssign;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$LocalAssign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static localfunctiondef(Ljava/lang/String;Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$LocalFuncDef;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$LocalFuncDef;-><init>(Ljava/lang/String;Lorg/luaj/vm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static repeatuntil(Lorg/luaj/vm2/ast/Block;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$RepeatUntil;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$RepeatUntil;-><init>(Lorg/luaj/vm2/ast/Block;Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method

.method public static returnstat(Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$Return;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/ast/Stat$Return;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static whiledo(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/ast/Stat$WhileDo;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/ast/Stat$WhileDo;-><init>(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/luaj/vm2/ast/Visitor;)V
.end method
