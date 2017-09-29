.class final Lorg/jacoco/agent/rt/internal/Agent$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic val$agent:Lorg/jacoco/agent/rt/internal/Agent;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal/Agent;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/Agent$1;->val$agent:Lorg/jacoco/agent/rt/internal/Agent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent$1;->val$agent:Lorg/jacoco/agent/rt/internal/Agent;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/Agent;->shutdown()V

    return-void
.end method
