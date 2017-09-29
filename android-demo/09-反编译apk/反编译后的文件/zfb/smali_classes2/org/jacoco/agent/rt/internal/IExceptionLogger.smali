.class public interface abstract Lorg/jacoco/agent/rt/internal/IExceptionLogger;
.super Ljava/lang/Object;


# static fields
.field public static final SYSTEM_ERR:Lorg/jacoco/agent/rt/internal/IExceptionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jacoco/agent/rt/internal/IExceptionLogger$1;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal/IExceptionLogger$1;-><init>()V

    sput-object v0, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    return-void
.end method


# virtual methods
.method public abstract logExeption(Ljava/lang/Exception;)V
.end method
