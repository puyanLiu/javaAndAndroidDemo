.class public final Lorg/jacoco/agent/rt/internal/PreMain;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "jacoco premain"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions;

    invoke-direct {v0, p0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/Agent;->getInstance(Lorg/jacoco/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal/Agent;

    move-result-object v1

    const-string/jumbo v2, "java/util/UUID"

    invoke-static {p1, v2}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal/Agent;->getData()Lorg/jacoco/core/runtime/RuntimeData;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jacoco/core/runtime/IRuntime;->startup(Lorg/jacoco/core/runtime/RuntimeData;)V

    new-instance v1, Lorg/jacoco/agent/rt/internal/CoverageTransformer;

    sget-object v3, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-direct {v1, v2, v0, v3}, Lorg/jacoco/agent/rt/internal/CoverageTransformer;-><init>(Lorg/jacoco/core/runtime/IRuntime;Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V

    invoke-interface {p1, v1}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    return-void
.end method
