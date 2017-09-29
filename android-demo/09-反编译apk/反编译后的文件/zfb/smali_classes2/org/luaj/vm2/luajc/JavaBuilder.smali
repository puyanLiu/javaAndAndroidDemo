.class public Lorg/luaj/vm2/luajc/JavaBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final A:[Lorg/apache/bcel/generic/Type;

.field private static final B:[Lorg/apache/bcel/generic/Type;

.field public static final BRANCH_GOTO:I = 0x1

.field public static final BRANCH_IFEQ:I = 0x3

.field public static final BRANCH_IFNE:I = 0x2

.field private static final C:[Lorg/apache/bcel/generic/Type;

.field private static final D:[Lorg/apache/bcel/generic/Type;

.field private static final E:[Lorg/apache/bcel/generic/Type;

.field private static final F:[Lorg/apache/bcel/generic/Type;

.field private static final G:[Lorg/apache/bcel/generic/Type;

.field private static final H:[Lorg/apache/bcel/generic/Type;

.field private static final I:[Lorg/apache/bcel/generic/Type;

.field private static final J:[Lorg/apache/bcel/generic/Type;

.field private static final K:[Lorg/apache/bcel/generic/Type;

.field private static final L:[Lorg/apache/bcel/generic/Type;

.field private static final M:[Lorg/apache/bcel/generic/Type;

.field private static final N:[Lorg/apache/bcel/generic/Type;

.field private static final O:[Lorg/apache/bcel/generic/Type;

.field private static final P:[Lorg/apache/bcel/generic/Type;

.field private static final Q:[Lorg/apache/bcel/generic/Type;

.field private static final R:[Lorg/apache/bcel/generic/Type;

.field private static final S:[Lorg/apache/bcel/generic/Type;

.field private static final T:[Ljava/lang/String;

.field private static final U:[Lorg/apache/bcel/generic/ObjectType;

.field private static final V:[[Lorg/apache/bcel/generic/Type;

.field private static final W:[[Ljava/lang/String;

.field private static final X:[Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static ai:I

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$luaj$vm2$Buffer:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaBoolean:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaInteger:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaNumber:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaString:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaTable:Ljava/lang/Class;

.field static class$org$luaj$vm2$LuaValue:Ljava/lang/Class;

.field static class$org$luaj$vm2$Varargs:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$OneArgFunction:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$ThreeArgFunction:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$TwoArgFunction:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$VarArgFunction:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$ZeroArgFunction:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Lorg/apache/bcel/generic/ObjectType;

.field private static final k:Lorg/apache/bcel/generic/ObjectType;

.field private static final l:Lorg/apache/bcel/generic/ObjectType;

.field private static final m:Lorg/apache/bcel/generic/ObjectType;

.field private static final n:Lorg/apache/bcel/generic/ObjectType;

.field private static final o:Lorg/apache/bcel/generic/ObjectType;

.field private static final p:Lorg/apache/bcel/generic/ObjectType;

.field private static final q:Lorg/apache/bcel/generic/ObjectType;

.field private static final r:Lorg/apache/bcel/generic/ObjectType;

.field private static final s:Lorg/apache/bcel/generic/ArrayType;

.field private static final t:Lorg/apache/bcel/generic/ArrayType;

.field private static final u:Lorg/apache/bcel/generic/ArrayType;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field private final Y:Lorg/luaj/vm2/luajc/ProtoInfo;

.field private final Z:Lorg/luaj/vm2/Prototype;

.field private final aa:Ljava/lang/String;

.field private final ab:Lorg/apache/bcel/generic/ClassGen;

.field private final ac:Lorg/apache/bcel/generic/ConstantPoolGen;

.field private final ad:Lorg/apache/bcel/generic/InstructionFactory;

.field private final ae:Lorg/apache/bcel/generic/InstructionList;

.field private final af:Lorg/apache/bcel/generic/InstructionList;

.field private final ag:Lorg/apache/bcel/generic/MethodGen;

.field private ah:I

.field private final aj:[I

.field private final ak:[Lorg/apache/bcel/generic/BranchInstruction;

.field private final al:[Lorg/apache/bcel/generic/InstructionHandle;

.field private final am:[Lorg/apache/bcel/generic/InstructionHandle;

.field private an:Lorg/apache/bcel/generic/InstructionHandle;

.field private ao:Lorg/apache/bcel/generic/LocalVariableGen;

.field private ap:I

.field private aq:Ljava/util/Map;

.field private ar:Ljava/util/Map;

.field private as:Ljava/util/Map;

.field private at:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Varargs:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.luaj.vm2.Varargs"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Varargs:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaValue:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.luaj.vm2.LuaValue"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaValue:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaString:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.luaj.vm2.LuaString"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaString:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->c:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaInteger:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "org.luaj.vm2.LuaInteger"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaInteger:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->d:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaNumber:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "org.luaj.vm2.LuaNumber"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaNumber:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->e:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaBoolean:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "org.luaj.vm2.LuaBoolean"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaBoolean:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->f:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaTable:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "org.luaj.vm2.LuaTable"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaTable:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->g:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Buffer:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "org.luaj.vm2.Buffer"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Buffer:Ljava/lang/Class;

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->h:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->i:Ljava/lang/String;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->l:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->m:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->n:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->o:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->p:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->q:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->r:Lorg/apache/bcel/generic/ObjectType;

    new-instance v0, Lorg/apache/bcel/generic/ArrayType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {v0, v1, v3}, Lorg/apache/bcel/generic/ArrayType;-><init>(Lorg/apache/bcel/generic/Type;I)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    new-instance v0, Lorg/apache/bcel/generic/ArrayType;

    sget-object v1, Lorg/apache/bcel/generic/Type;->CHAR:Lorg/apache/bcel/generic/BasicType;

    invoke-direct {v0, v1, v3}, Lorg/apache/bcel/generic/ArrayType;-><init>(Lorg/apache/bcel/generic/Type;I)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->t:Lorg/apache/bcel/generic/ArrayType;

    new-instance v0, Lorg/apache/bcel/generic/ArrayType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->r:Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {v0, v1, v3}, Lorg/apache/bcel/generic/ArrayType;-><init>(Lorg/apache/bcel/generic/Type;I)V

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->u:Lorg/apache/bcel/generic/ArrayType;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$VarArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "org.luaj.vm2.lib.VarArgFunction"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$VarArgFunction:Ljava/lang/Class;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->v:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ZeroArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string/jumbo v0, "org.luaj.vm2.lib.ZeroArgFunction"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ZeroArgFunction:Ljava/lang/Class;

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->w:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$OneArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "org.luaj.vm2.lib.OneArgFunction"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$OneArgFunction:Ljava/lang/Class;

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->x:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$TwoArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string/jumbo v0, "org.luaj.vm2.lib.TwoArgFunction"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$TwoArgFunction:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->y:Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ThreeArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string/jumbo v0, "org.luaj.vm2.lib.ThreeArgFunction"

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ThreeArgFunction:Ljava/lang/Class;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->z:Ljava/lang/String;

    new-array v0, v4, [Lorg/apache/bcel/generic/Type;

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->INT:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->DOUBLE:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->C:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->STRING:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->D:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->t:Lorg/apache/bcel/generic/ArrayType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->E:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->INT:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->F:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->INT:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->G:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->H:[Lorg/apache/bcel/generic/Type;

    new-array v0, v6, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->I:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    new-instance v1, Lorg/apache/bcel/generic/ArrayType;

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {v1, v2, v3}, Lorg/apache/bcel/generic/ArrayType;-><init>(Lorg/apache/bcel/generic/Type;I)V

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->J:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    new-instance v1, Lorg/apache/bcel/generic/ArrayType;

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {v1, v2, v3}, Lorg/apache/bcel/generic/ArrayType;-><init>(Lorg/apache/bcel/generic/Type;I)V

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->K:[Lorg/apache/bcel/generic/Type;

    new-array v0, v6, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->L:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->M:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->N:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/apache/bcel/generic/Type;->INT:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/bcel/generic/Type;->INT:Lorg/apache/bcel/generic/BasicType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->O:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->q:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->Q:[Lorg/apache/bcel/generic/Type;

    new-array v0, v3, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->u:Lorg/apache/bcel/generic/ArrayType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->R:[Lorg/apache/bcel/generic/Type;

    new-array v0, v5, [Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->u:Lorg/apache/bcel/generic/ArrayType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->S:[Lorg/apache/bcel/generic/Type;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->w:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->x:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->y:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->z:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->v:Ljava/lang/String;

    aput-object v1, v0, v7

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->T:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/bcel/generic/ObjectType;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->U:[Lorg/apache/bcel/generic/ObjectType;

    const/4 v0, 0x5

    new-array v0, v0, [[Lorg/apache/bcel/generic/Type;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->N:[Lorg/apache/bcel/generic/Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->L:[Lorg/apache/bcel/generic/Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->M:[Lorg/apache/bcel/generic/Type;

    aput-object v1, v0, v7

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->V:[[Lorg/apache/bcel/generic/Type;

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "arg"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "arg1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "arg2"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "arg1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "arg2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "arg3"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "args"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->W:[[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "call"

    aput-object v1, v0, v4

    const-string/jumbo v1, "call"

    aput-object v1, v0, v3

    const-string/jumbo v1, "call"

    aput-object v1, v0, v5

    const-string/jumbo v1, "call"

    aput-object v1, v0, v6

    const-string/jumbo v1, "onInvoke"

    aput-object v1, v0, v7

    sput-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->X:[Ljava/lang/String;

    sput v7, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    return-void

    :cond_0
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Varargs:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaValue:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaString:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaInteger:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaNumber:Ljava/lang/Class;

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaBoolean:Ljava/lang/Class;

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$LuaTable:Ljava/lang/Class;

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$Buffer:Ljava/lang/Class;

    goto/16 :goto_7

    :cond_8
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_8

    :cond_9
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$VarArgFunction:Ljava/lang/Class;

    goto/16 :goto_9

    :cond_a
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ZeroArgFunction:Ljava/lang/Class;

    goto/16 :goto_a

    :cond_b
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$OneArgFunction:Ljava/lang/Class;

    goto/16 :goto_b

    :cond_c
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$TwoArgFunction:Ljava/lang/Class;

    goto/16 :goto_c

    :cond_d
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->class$org$luaj$vm2$lib$ThreeArgFunction:Ljava/lang/Class;

    goto/16 :goto_d
.end method

.method public constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ao:Lorg/apache/bcel/generic/LocalVariableGen;

    const/4 v0, -0x1

    iput v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ap:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aq:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ar:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->as:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    iput-object p1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iput-object p2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    iput v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    sget v1, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    if-lt v0, v1, :cond_1

    :cond_0
    sget v0, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    iput v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v0

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v2, v2, Lorg/luaj/vm2/Prototype;->code:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_4

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    :cond_2
    sget v0, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    iput v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    :cond_3
    new-instance v0, Lorg/apache/bcel/generic/ClassGen;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->T:[Ljava/lang/String;

    iget v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    aget-object v2, v1, v2

    const/16 v4, 0x21

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/bcel/generic/ClassGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    new-instance v0, Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/InstructionFactory;-><init>(Lorg/apache/bcel/generic/ClassGen;)V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    new-instance v0, Lorg/apache/bcel/generic/InstructionList;

    invoke-direct {v0}, Lorg/apache/bcel/generic/InstructionList;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    new-instance v0, Lorg/apache/bcel/generic/InstructionList;

    invoke-direct {v0}, Lorg/apache/bcel/generic/InstructionList;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    move v0, v6

    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v1, v1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    :goto_2
    new-instance v2, Lorg/apache/bcel/generic/FieldGen;

    invoke-static {v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v2, v6, v1, v3, v4}, Lorg/apache/bcel/generic/FieldGen;-><init>(ILorg/apache/bcel/generic/Type;Ljava/lang/String;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v2}, Lorg/apache/bcel/generic/FieldGen;->getField()Lorg/apache/bcel/classfile/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/bcel/generic/ClassGen;->addField(Lorg/apache/bcel/classfile/Field;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/apache/bcel/generic/MethodGen;

    const/16 v1, 0x11

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->U:[Lorg/apache/bcel/generic/ObjectType;

    iget v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    aget-object v2, v2, v3

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->V:[[Lorg/apache/bcel/generic/Type;

    iget v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    aget-object v3, v3, v4

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->W:[[Ljava/lang/String;

    iget v5, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    aget-object v4, v4, v5

    sget-object v5, Lorg/luaj/vm2/luajc/JavaBuilder;->X:[Ljava/lang/String;

    iget v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    aget-object v5, v5, v6

    sget-object v6, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    iget-object v8, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct/range {v0 .. v8}, Lorg/apache/bcel/generic/MethodGen;-><init>(ILorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/InstructionList;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->initializeSlots()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v0, v0

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aj:[I

    new-array v1, v0, [Lorg/apache/bcel/generic/BranchInstruction;

    iput-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    new-array v1, v0, [Lorg/apache/bcel/generic/InstructionHandle;

    iput-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    new-array v0, v0, [Lorg/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->am:[Lorg/apache/bcel/generic/InstructionHandle;

    return-void
.end method

.method private a()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ao:Lorg/apache/bcel/generic/LocalVariableGen;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    const-string/jumbo v1, "v"

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/apache/bcel/generic/Type;Lorg/apache/bcel/generic/InstructionHandle;Lorg/apache/bcel/generic/InstructionHandle;)Lorg/apache/bcel/generic/LocalVariableGen;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ao:Lorg/apache/bcel/generic/LocalVariableGen;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ao:Lorg/apache/bcel/generic/LocalVariableGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v0

    return v0
.end method

.method private a(ILjava/util/Map;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    invoke-virtual {v2, v0, p4, v3, v3}, Lorg/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/apache/bcel/generic/Type;Lorg/apache/bcel/generic/InstructionHandle;Lorg/apache/bcel/generic/InstructionHandle;)Lorg/apache/bcel/generic/LocalVariableGen;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->as:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(IZ)I
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ar:Ljava/util/Map;

    const-string/jumbo v1, "a"

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(ILjava/util/Map;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aq:Ljava/util/Map;

    const-string/jumbo v1, "s"

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(ILjava/util/Map;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/luaj/vm2/LuaString;)Ljava/lang/String;
    .locals 13

    const/16 v5, 0xb8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "k"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lorg/apache/bcel/generic/FieldGen;

    const/16 v1, 0x18

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/bcel/generic/FieldGen;-><init>(ILorg/apache/bcel/generic/Type;Ljava/lang/String;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/FieldGen;->getField()Lorg/apache/bcel/classfile/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/bcel/generic/ClassGen;->addField(Lorg/apache/bcel/classfile/Field;)V

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    new-instance v1, Lorg/apache/bcel/generic/PUSH;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/CompoundInstruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->c:Ljava/lang/String;

    const-string/jumbo v2, "valueOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->l:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->D:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2, v12, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createPutStatic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)Lorg/apache/bcel/generic/PUTSTATIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    return-object v12

    :cond_0
    iget v0, v1, Lorg/luaj/vm2/LuaString;->m_length:I

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_1
    iget v3, v1, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ge v0, v3, :cond_1

    iget-object v3, v1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v4, v1, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    new-instance v1, Lorg/apache/bcel/generic/PUSH;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v3, v4}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/CompoundInstruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v7, Lorg/luaj/vm2/luajc/JavaBuilder;->i:Ljava/lang/String;

    const-string/jumbo v8, "toCharArray"

    sget-object v9, Lorg/luaj/vm2/luajc/JavaBuilder;->t:Lorg/apache/bcel/generic/ArrayType;

    sget-object v10, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v11, 0xb6

    invoke-virtual/range {v6 .. v11}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->c:Ljava/lang/String;

    const-string/jumbo v2, "valueOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->l:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->E:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    goto :goto_0
.end method

.method private a(Lorg/apache/bcel/generic/CompoundInstruction;)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0, p1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/CompoundInstruction;)Lorg/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/InstructionHandle;)V

    return-void
.end method

.method private a(Lorg/apache/bcel/generic/Instruction;)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0, p1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/InstructionHandle;)V

    return-void
.end method

.method private a(Lorg/apache/bcel/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->an:Lorg/apache/bcel/generic/InstructionHandle;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->an:Lorg/apache/bcel/generic/InstructionHandle;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aj:[I

    aget v0, v0, v1

    :goto_1
    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "no target at or after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aj:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v3, v3, Lorg/luaj/vm2/Prototype;->code:[I

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aj:[I

    aget v1, v4, v1

    aget v1, v3, v1

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Lorg/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/apache/bcel/generic/InstructionHandle;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addBranch(III)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    new-instance v1, Lorg/apache/bcel/generic/GOTO;

    invoke-direct {v1, v2}, Lorg/apache/bcel/generic/GOTO;-><init>(Lorg/apache/bcel/generic/InstructionHandle;)V

    aput-object v1, v0, p1

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aj:[I

    aput p3, v0, p1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v1, v0}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/BranchInstruction;)Lorg/apache/bcel/generic/BranchHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/InstructionHandle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    new-instance v1, Lorg/apache/bcel/generic/IFNE;

    invoke-direct {v1, v2}, Lorg/apache/bcel/generic/IFNE;-><init>(Lorg/apache/bcel/generic/InstructionHandle;)V

    aput-object v1, v0, p1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ak:[Lorg/apache/bcel/generic/BranchInstruction;

    new-instance v1, Lorg/apache/bcel/generic/IFEQ;

    invoke-direct {v1, v2}, Lorg/apache/bcel/generic/IFEQ;-><init>(Lorg/apache/bcel/generic/InstructionHandle;)V

    aput-object v1, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public areturn()V
    .locals 1

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->ARETURN:Lorg/apache/bcel/generic/ReturnInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public arg(I)V
    .locals 6

    const/16 v5, 0xb6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    const-string/jumbo v2, "arg1"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p1}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    const-string/jumbo v2, "arg"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0
.end method

.method public binaryop(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "add"

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :pswitch_0
    const-string/jumbo v2, "sub"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "mul"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "div"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "mod"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v2, "pow"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public call(I)V
    .locals 6

    const/16 v5, 0xb6

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "can\'t call with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "call"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "call"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "call"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->N:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "call"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->L:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public closeUpvalue(II)V
    .locals 0

    return-void
.end method

.method public closureCreate(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    new-instance v1, Lorg/apache/bcel/generic/ObjectType;

    invoke-direct {v1, p1}, Lorg/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionFactory;->createNew(Lorg/apache/bcel/generic/ObjectType;)Lorg/apache/bcel/generic/NEW;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->DUP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    const-string/jumbo v2, "<init>"

    sget-object v3, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb7

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public closureInitUpvalueFromLocal(Ljava/lang/String;III)V
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, v1, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v1, v1, p4

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    :goto_0
    invoke-static {p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v1

    new-instance v3, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v3, v1}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    const/16 v3, 0xb5

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :cond_0
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    goto :goto_0
.end method

.method public closureInitUpvalueFromUpvalue(Ljava/lang/String;II)V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, v1, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    :goto_0
    invoke-static {p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/bcel/generic/InstructionConstants;->THIS:Lorg/apache/bcel/generic/LocalVariableInstruction;

    invoke-direct {p0, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const/16 v5, 0xb4

    invoke-virtual {v3, v4, v1, v0, v5}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    const/16 v3, 0xb5

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :cond_0
    sget-object v0, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    goto :goto_0
.end method

.method public compareop(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "eq_b"

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    sget-object v3, Lorg/apache/bcel/generic/Type;->BOOLEAN:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :pswitch_0
    const-string/jumbo v2, "lt_b"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "lteq_b"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public completeClass(Z)[B
    .locals 13

    const/16 v12, 0xb8

    const/16 v11, 0xb5

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/bcel/generic/MethodGen;

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "<clinit>"

    iget-object v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v6}, Lorg/apache/bcel/generic/ClassGen;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v8, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v8}, Lorg/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/apache/bcel/generic/ConstantPoolGen;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/apache/bcel/generic/MethodGen;-><init>(ILorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/InstructionList;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    sget-object v2, Lorg/apache/bcel/generic/InstructionConstants;->RETURN:Lorg/apache/bcel/generic/ReturnInstruction;

    invoke-virtual {v1, v2}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->setMaxStack()V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->getMethod()Lorg/apache/bcel/classfile/Method;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/bcel/generic/ClassGen;->addMethod(Lorg/apache/bcel/classfile/Method;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/InstructionList;->dispose()V

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0, v10}, Lorg/apache/bcel/generic/ClassGen;->addEmptyConstructor(I)V

    invoke-direct {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->b()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->setMaxStack()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    invoke-virtual {v1}, Lorg/apache/bcel/generic/MethodGen;->getMethod()Lorg/apache/bcel/classfile/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/ClassGen;->addMethod(Lorg/apache/bcel/classfile/Method;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/InstructionList;->dispose()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    if-ne v0, v10, :cond_1

    iget v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    sget v1, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/bcel/generic/MethodGen;

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "env"

    aput-object v5, v4, v9

    const-string/jumbo v5, "initupvalue1"

    sget-object v6, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    iget-object v8, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct/range {v0 .. v8}, Lorg/apache/bcel/generic/MethodGen;-><init>(ILorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/InstructionList;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v1

    sget-object v2, Lorg/apache/bcel/generic/InstructionConstants;->THIS:Lorg/apache/bcel/generic/LocalVariableInstruction;

    invoke-direct {p0, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v2, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v2, v10}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const-string/jumbo v3, "newupl"

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    sget-object v5, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {v9}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    invoke-virtual {v1, v2, v3, v4, v11}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->RETURN:Lorg/apache/bcel/generic/ReturnInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->setMaxStack()V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->getMethod()Lorg/apache/bcel/classfile/Method;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/bcel/generic/ClassGen;->addMethod(Lorg/apache/bcel/classfile/Method;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/InstructionList;->dispose()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lorg/apache/bcel/generic/MethodGen;

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->R:[Lorg/apache/bcel/generic/Type;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "arg"

    aput-object v5, v4, v9

    const-string/jumbo v5, "main"

    iget-object v6, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    iget-object v8, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct/range {v0 .. v8}, Lorg/apache/bcel/generic/MethodGen;-><init>(ILorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/InstructionList;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/bcel/generic/InstructionFactory;->createNew(Ljava/lang/String;)Lorg/apache/bcel/generic/NEW;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->DUP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const-string/jumbo v3, "<init>"

    sget-object v4, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v5, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    const/16 v6, 0xb7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v1, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v1, v9}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    const-string/jumbo v2, "org.luaj.vm2.lib.jse.JsePlatform"

    const-string/jumbo v3, "luaMain"

    sget-object v4, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v5, Lorg/luaj/vm2/luajc/JavaBuilder;->S:[Lorg/apache/bcel/generic/Type;

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->RETURN:Lorg/apache/bcel/generic/ReturnInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->setMaxStack()V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/MethodGen;->getMethod()Lorg/apache/bcel/classfile/Method;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/bcel/generic/ClassGen;->addMethod(Lorg/apache/bcel/classfile/Method;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/apache/bcel/generic/InstructionList;->dispose()V

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v1}, Lorg/apache/bcel/generic/ClassGen;->getJavaClass()Lorg/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/bcel/classfile/JavaClass;->dump(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {v9}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2, v3, v4, v11}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "JavaClass.dump() threw "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public concatbuffer()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "concat"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->q:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->Q:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public concatvalue()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "concat"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public convertToUpvalue(II)V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueAssign(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v0

    new-instance v1, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v1, v0}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const-string/jumbo v2, "newupl"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v0

    new-instance v1, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {v1, v0}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :cond_0
    return-void
.end method

.method public createUpvalues(III)V
    .locals 8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p3, :cond_1

    add-int v0, p2, v6

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v1, p1, v0}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueCreate(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v7

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const-string/jumbo v2, "newupn"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {v0, v7}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dup()V
    .locals 1

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->DUP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public getTable()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "get"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->P:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public initializeSlots()V
    .locals 9

    const/16 v5, 0xb6

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v1, v1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    invoke-virtual {p0, v7, v0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->createUpvalues(III)V

    iget v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ah:I

    sget v2, Lorg/luaj/vm2/luajc/JavaBuilder;->ai:I

    if-ne v1, v2, :cond_3

    move v6, v0

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, v6}, Lorg/luaj/vm2/luajc/ProtoInfo;->isInitialValueUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v0, v8}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    add-int/lit8 v2, v6, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    const-string/jumbo v2, "arg"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, v7, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v0, v8}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    const-string/jumbo v2, "subargs"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {v0, v8}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v6, v0, :cond_5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, v6}, Lorg/luaj/vm2/luajc/ProtoInfo;->isInitialValueUsed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNil()V

    invoke-virtual {p0, v7, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Z:Lorg/luaj/vm2/Prototype;

    iget v1, v1, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aq:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v1, v7, v0}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueCreate(II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/bcel/generic/ALOAD;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, v7, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    move v6, v0

    goto :goto_1
.end method

.method public invoke(I)V
    .locals 6

    const/16 v5, 0xb6

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "can\'t invoke with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "invoke"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->M:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "invoke"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "invoke"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->M:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "invoke"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->H:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "invoke"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->I:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isNil()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "isnil"

    sget-object v3, Lorg/apache/bcel/generic/Type;->BOOLEAN:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public loadArrayArgs(III)V
    .locals 3

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p3}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    new-instance v0, Lorg/apache/bcel/generic/ANEWARRAY;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ANEWARRAY;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->DUP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v1, Lorg/apache/bcel/generic/PUSH;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v1, v2, v0}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    new-instance v2, Lorg/apache/bcel/generic/AASTORE;

    invoke-direct {v2}, Lorg/apache/bcel/generic/AASTORE;-><init>()V

    invoke-direct {p0, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadBoolean(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->o:Lorg/apache/bcel/generic/ObjectType;

    const/16 v4, 0xb2

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method

.method public loadConstant(Lorg/luaj/vm2/LuaValue;)V
    .locals 8

    const/16 v5, 0xb8

    const/16 v7, 0x18

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "bad constant type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNil()V

    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadBoolean(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "k"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lorg/apache/bcel/generic/FieldGen;

    sget-object v2, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v1, v7, v2, v6, v3}, Lorg/apache/bcel/generic/FieldGen;-><init>(ILorg/apache/bcel/generic/Type;Ljava/lang/String;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v1}, Lorg/apache/bcel/generic/FieldGen;->getField()Lorg/apache/bcel/classfile/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/bcel/generic/ClassGen;->addField(Lorg/apache/bcel/classfile/Field;)V

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    new-instance v2, Lorg/apache/bcel/generic/PUSH;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v2, v3, v0}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, v2}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/CompoundInstruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "valueOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->m:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2, v6, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createPutStatic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)Lorg/apache/bcel/generic/PUTSTATIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    move-object v0, v6

    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createGetStatic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)Lorg/apache/bcel/generic/GETSTATIC;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkdouble()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "k"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->at:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lorg/apache/bcel/generic/FieldGen;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v2, v7, v3, v6, v4}, Lorg/apache/bcel/generic/FieldGen;-><init>(ILorg/apache/bcel/generic/Type;Ljava/lang/String;Lorg/apache/bcel/generic/ConstantPoolGen;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ab:Lorg/apache/bcel/generic/ClassGen;

    invoke-virtual {v2}, Lorg/apache/bcel/generic/FieldGen;->getField()Lorg/apache/bcel/classfile/Field;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/bcel/generic/ClassGen;->addField(Lorg/apache/bcel/classfile/Field;)V

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    new-instance v3, Lorg/apache/bcel/generic/PUSH;

    iget-object v4, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v3, v4, v0, v1}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;D)V

    invoke-virtual {v2, v3}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/CompoundInstruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v7, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "valueOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->n:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->C:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ae:Lorg/apache/bcel/generic/InstructionList;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2, v6, v3}, Lorg/apache/bcel/generic/InstructionFactory;->createPutStatic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;)Lorg/apache/bcel/generic/PUTSTATIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/InstructionList;->append(Lorg/apache/bcel/generic/Instruction;)Lorg/apache/bcel/generic/InstructionHandle;

    move-object v0, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/luaj/vm2/LuaString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public loadLocal(II)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueRefer(II)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v1

    new-instance v2, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v2, v1}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->AALOAD:Lorg/apache/bcel/generic/ArrayInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :cond_0
    return-void
.end method

.method public loadNil()V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "NIL"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    const/16 v4, 0xb2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public loadNone()V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "NONE"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    const/16 v4, 0xb2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public loadUpvalue(I)V
    .locals 5

    const/16 v4, 0xb4

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, v1, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v0

    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->THIS:Lorg/apache/bcel/generic/LocalVariableInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->AALOAD:Lorg/apache/bcel/generic/ArrayInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0
.end method

.method public loadVarargs()V
    .locals 2

    new-instance v0, Lorg/apache/bcel/generic/ALOAD;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public loadVarargs(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarargs()V

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->arg(I)V

    return-void
.end method

.method public loadVarresult()V
    .locals 2

    new-instance v0, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public newTable(II)V
    .locals 6

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p1}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "tableOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->p:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->O:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public newTailcallVarargs()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "tailcallOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->H:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public newVarargs(III)V
    .locals 6

    const/16 v5, 0xb8

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadArrayArgs(III)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "varargsOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->J:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNone()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "varargsOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->H:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "varargsOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->I:[Lorg/apache/bcel/generic/Type;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public newVarargsVarresult(III)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadArrayArgs(III)V

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarresult()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "varargsOf"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->K:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public onEndOfLuaInstruction(II)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->al:[Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->an:Lorg/apache/bcel/generic/InstructionHandle;

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->am:[Lorg/apache/bcel/generic/InstructionHandle;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->af:Lorg/apache/bcel/generic/InstructionList;

    invoke-virtual {v1}, Lorg/apache/bcel/generic/InstructionList;->getEnd()Lorg/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    aput-object v1, v0, p1

    iget v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ap:I

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ag:Lorg/apache/bcel/generic/MethodGen;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->an:Lorg/apache/bcel/generic/InstructionHandle;

    iput p2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ap:I

    invoke-virtual {v0, v1, p2}, Lorg/apache/bcel/generic/MethodGen;->addLineNumber(Lorg/apache/bcel/generic/InstructionHandle;I)Lorg/apache/bcel/generic/LineNumberGen;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->an:Lorg/apache/bcel/generic/InstructionHandle;

    return-void
.end method

.method public pop()V
    .locals 1

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->POP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public setTable()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "set"

    sget-object v3, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->N:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public setVarStartEnd(IIILjava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->as:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "[^a-zA-Z0-9]"

    const-string/jumbo v2, "_"

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->as:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/bcel/generic/LocalVariableGen;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->am:[Lorg/apache/bcel/generic/InstructionHandle;

    add-int/lit8 v3, p3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/apache/bcel/generic/InstructionHandle;)V

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->am:[Lorg/apache/bcel/generic/InstructionHandle;

    add-int/lit8 v3, p2, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/apache/bcel/generic/InstructionHandle;)V

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/bcel/generic/LocalVariableGen;->setName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setlistStack(IIII)V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p4, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    add-int v2, p3, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    add-int v0, p2, v6

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "rawset"

    sget-object v3, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->F:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setlistVarargs(II)V
    .locals 6

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p1}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarresult()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "rawsetlist"

    sget-object v3, Lorg/apache/bcel/generic/Type;->VOID:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->G:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public storeLocal(II)V
    .locals 7

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueAssign(II)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(IZ)I

    move-result v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueCreate(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    const-string/jumbo v2, "newupe"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->A:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->DUP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {v0, v6}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->SWAP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->SWAP:Lorg/apache/bcel/generic/StackInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->AASTORE:Lorg/apache/bcel/generic/ArrayInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/apache/bcel/generic/ALOAD;

    invoke-direct {v0, v6}, Lorg/apache/bcel/generic/ALOAD;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {v0, v6}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_1
.end method

.method public storeUpvalue(III)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->Y:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v1, v1, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/luajc/ProtoInfo;->isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z

    move-result v0

    sget-object v1, Lorg/apache/bcel/generic/InstructionConstants;->THIS:Lorg/apache/bcel/generic/LocalVariableInstruction;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->s:Lorg/apache/bcel/generic/ArrayType;

    const/16 v4, 0xb4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    invoke-virtual {p0, p1, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    sget-object v0, Lorg/apache/bcel/generic/InstructionConstants;->AASTORE:Lorg/apache/bcel/generic/ArrayInstruction;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->aa:Ljava/lang/String;

    invoke-static {p2}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    const/16 v4, 0xb5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/bcel/generic/InstructionFactory;->createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/FieldInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    goto :goto_0
.end method

.method public storeVarresult()V
    .locals 2

    new-instance v0, Lorg/apache/bcel/generic/ASTORE;

    invoke-direct {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/bcel/generic/ASTORE;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public subargs(I)V
    .locals 6

    new-instance v0, Lorg/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ac:Lorg/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, v1, p1}, Lorg/apache/bcel/generic/PUSH;-><init>(Lorg/apache/bcel/generic/ConstantPoolGen;I)V

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/CompoundInstruction;)V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->a:Ljava/lang/String;

    const-string/jumbo v2, "subargs"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->j:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->B:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public testForLoop()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "testfor_b"

    sget-object v3, Lorg/apache/bcel/generic/Type;->BOOLEAN:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/luaj/vm2/luajc/JavaBuilder;->N:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public toBoolean()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "toboolean"

    sget-object v3, Lorg/apache/bcel/generic/Type;->BOOLEAN:Lorg/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public tobuffer()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    const-string/jumbo v2, "buffer"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->q:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public tostring()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->h:Ljava/lang/String;

    const-string/jumbo v2, "tostring"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->l:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public tovalue()V
    .locals 6

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->h:Ljava/lang/String;

    const-string/jumbo v2, "value"

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void
.end method

.method public unaryop(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "neg"

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaBuilder;->ad:Lorg/apache/bcel/generic/InstructionFactory;

    sget-object v1, Lorg/luaj/vm2/luajc/JavaBuilder;->b:Ljava/lang/String;

    sget-object v3, Lorg/luaj/vm2/luajc/JavaBuilder;->k:Lorg/apache/bcel/generic/ObjectType;

    sget-object v4, Lorg/apache/bcel/generic/Type;->NO_ARGS:[Lorg/apache/bcel/generic/Type;

    const/16 v5, 0xb6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/apache/bcel/generic/Type;[Lorg/apache/bcel/generic/Type;S)Lorg/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->a(Lorg/apache/bcel/generic/Instruction;)V

    return-void

    :pswitch_0
    const-string/jumbo v2, "not"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "len"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
