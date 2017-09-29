.class final Lorg/jacoco/agent/rt/internal/IExceptionLogger$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/agent/rt/internal/IExceptionLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final logExeption(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
