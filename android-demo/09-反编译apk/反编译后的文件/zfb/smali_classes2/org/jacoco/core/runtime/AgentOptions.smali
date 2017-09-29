.class public final Lorg/jacoco/core/runtime/AgentOptions;
.super Ljava/lang/Object;


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APPEND:Ljava/lang/String; = "append"

.field public static final CLASSDUMPDIR:Ljava/lang/String; = "classdumpdir"

.field public static final DEFAULT_ADDRESS:Ljava/lang/String; = "*"

.field public static final DEFAULT_PORT:I = 0x189c

.field public static final DESTFILE:Ljava/lang/String; = "destfile"

.field public static final DUMPONEXIT:Ljava/lang/String; = "dumponexit"

.field public static final EXCLCLASSLOADER:Ljava/lang/String; = "exclclassloader"

.field public static final EXCLUDES:Ljava/lang/String; = "excludes"

.field public static final INCLUDES:Ljava/lang/String; = "includes"

.field public static final JMX:Ljava/lang/String; = "jmx"

.field public static final OUTPUT:Ljava/lang/String; = "output"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SESSIONID:Ljava/lang/String; = "sessionid"

.field private static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "destfile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "append"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "includes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "excludes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "exclclassloader"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sessionid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dumponexit"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "output"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "port"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "classdumpdir"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "jmx"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid agent option syntax \"%s\"."

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jacoco/core/runtime/AgentOptions;->a:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown agent option \"%s\"."

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v6, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/jacoco/core/runtime/AgentOptions;->getPort()I

    move-result v0

    invoke-static {v0}, Lorg/jacoco/core/runtime/AgentOptions;->a(I)V

    invoke-virtual {p0}, Lorg/jacoco/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3

    invoke-direct {p0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>()V

    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(I)V
    .locals 2

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "port must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid character in option argument \"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "address"

    const-string/jumbo v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppend()Z
    .locals 2

    const-string/jumbo v0, "append"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getClassDumpDir()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "classdumpdir"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDestfile()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "destfile"

    const-string/jumbo v1, "jacoco.exec"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDumpOnExit()Z
    .locals 2

    const-string/jumbo v0, "dumponexit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getExclClassloader()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "exclclassloader"

    const-string/jumbo v1, "sun.reflect.DelegatingClassLoader"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExcludes()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "excludes"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIncludes()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "includes"

    const-string/jumbo v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJmx()Z
    .locals 2

    const-string/jumbo v0, "jmx"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getOutput()Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    const-string/jumbo v1, "output"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPort()I
    .locals 2

    const-string/jumbo v0, "port"

    iget-object v1, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x189c

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final getQuotedVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sessionid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "-javaagent:%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final prependVMArguments(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/jacoco/core/runtime/CommandLineSupport;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v0, "-javaagent:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/jacoco/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v1}, Lorg/jacoco/core/runtime/CommandLineSupport;->quote(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "address"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppend(Z)V
    .locals 1

    const-string/jumbo v0, "append"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setClassDumpDir(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "classdumpdir"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDestfile(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "destfile"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDumpOnExit(Z)V
    .locals 1

    const-string/jumbo v0, "dumponexit"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setExclClassloader(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "exclclassloader"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setExcludes(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "excludes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setIncludes(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "includes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setJmx(Z)V
    .locals 1

    const-string/jumbo v0, "jmx"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setOutput(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/core/runtime/AgentOptions;->setOutput(Lorg/jacoco/core/runtime/AgentOptions$OutputMode;)V

    return-void
.end method

.method public final setOutput(Lorg/jacoco/core/runtime/AgentOptions$OutputMode;)V
    .locals 2

    const-string/jumbo v0, "output"

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPort(I)V
    .locals 2

    invoke-static {p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(I)V

    const-string/jumbo v0, "port"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sessionid"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/core/runtime/AgentOptions;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
