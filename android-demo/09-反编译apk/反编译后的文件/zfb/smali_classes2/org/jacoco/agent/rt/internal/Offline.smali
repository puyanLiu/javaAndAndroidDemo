.class public final Lorg/jacoco/agent/rt/internal/Offline;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lorg/jacoco/core/runtime/RuntimeData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "jacoco Offline static"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "/jacoco-agent.properties"

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal/ConfigLoader;->load(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Lorg/jacoco/core/runtime/AgentOptions;

    invoke-direct {v1, v0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>(Ljava/util/Properties;)V

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/Agent;->getInstance(Lorg/jacoco/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/Agent;->getData()Lorg/jacoco/core/runtime/RuntimeData;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal/Offline;->a:Lorg/jacoco/core/runtime/RuntimeData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProbes(JLjava/lang/String;I)[Z
    .locals 2

    sget-object v0, Lorg/jacoco/agent/rt/internal/Offline;->a:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/jacoco/core/runtime/RuntimeData;->getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v0

    return-object v0
.end method
