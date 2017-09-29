.class public final Lorg/jacoco/agent/rt/RT;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgent()Lorg/jacoco/agent/rt/IAgent;
    .locals 1

    invoke-static {}, Lorg/jacoco/agent/rt/internal/Agent;->getInstance()Lorg/jacoco/agent/rt/internal/Agent;

    move-result-object v0

    return-object v0
.end method
