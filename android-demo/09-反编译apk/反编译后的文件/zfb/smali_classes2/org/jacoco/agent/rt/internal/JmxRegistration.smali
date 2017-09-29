.class Lorg/jacoco/agent/rt/internal/JmxRegistration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/management/MBeanServer;

.field private final b:Ljavax/management/ObjectName;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/IAgent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->a:Ljavax/management/MBeanServer;

    new-instance v0, Ljavax/management/ObjectName;

    const-string/jumbo v1, "org.jacoco:type=Runtime"

    invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->b:Ljavax/management/ObjectName;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->a:Ljavax/management/MBeanServer;

    new-instance v1, Ljavax/management/StandardMBean;

    const-class v2, Lorg/jacoco/agent/rt/IAgent;

    invoke-direct {v1, p1, v2}, Ljavax/management/StandardMBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->b:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal/JmxRegistration;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->a:Ljavax/management/MBeanServer;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/JmxRegistration;->b:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    const/4 v0, 0x0

    return-object v0
.end method
