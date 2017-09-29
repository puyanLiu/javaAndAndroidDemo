.class public Lorg/jacoco/agent/rt/internal/CoverageTransformer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/jacoco/core/instr/Instrumenter;

.field private final c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

.field private final d:Lorg/jacoco/core/runtime/WildcardMatcher;

.field private final e:Lorg/jacoco/core/runtime/WildcardMatcher;

.field private final f:Lorg/jacoco/core/runtime/WildcardMatcher;

.field private final g:Lorg/jacoco/agent/rt/internal/ClassFileDumper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jacoco/core/runtime/IRuntime;Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jacoco/core/instr/Instrumenter;

    invoke-direct {v0, p1}, Lorg/jacoco/core/instr/Instrumenter;-><init>(Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->b:Lorg/jacoco/core/instr/Instrumenter;

    iput-object p3, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    new-instance v0, Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/core/runtime/AgentOptions;->getIncludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->d:Lorg/jacoco/core/runtime/WildcardMatcher;

    new-instance v0, Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/core/runtime/AgentOptions;->getExcludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->e:Lorg/jacoco/core/runtime/WildcardMatcher;

    new-instance v0, Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/core/runtime/AgentOptions;->getExclClassloader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->f:Lorg/jacoco/core/runtime/WildcardMatcher;

    new-instance v0, Lorg/jacoco/agent/rt/internal/ClassFileDumper;

    invoke-virtual {p2}, Lorg/jacoco/core/runtime/AgentOptions;->getClassDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal/ClassFileDumper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->g:Lorg/jacoco/agent/rt/internal/ClassFileDumper;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected filter(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->f:Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->d:Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {v0, p2}, Lorg/jacoco/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->e:Lorg/jacoco/core/runtime/WildcardMatcher;

    invoke-virtual {v0, p2}, Lorg/jacoco/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->filter(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->g:Lorg/jacoco/agent/rt/internal/ClassFileDumper;

    invoke-virtual {v0, p2, p5}, Lorg/jacoco/agent/rt/internal/ClassFileDumper;->dump(Ljava/lang/String;[B)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->b:Lorg/jacoco/core/instr/Instrumenter;

    invoke-virtual {v0, p5, p2}, Lorg/jacoco/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/instrument/IllegalClassFormatException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/instrument/IllegalClassFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/instrument/IllegalClassFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/CoverageTransformer;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-interface {v0, v1}, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    throw v1
.end method
