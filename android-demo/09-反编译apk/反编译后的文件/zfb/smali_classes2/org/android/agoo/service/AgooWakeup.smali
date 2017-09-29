.class public Lorg/android/agoo/service/AgooWakeup;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final wakeup(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/android/agoo/service/AgooWakeup$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/service/AgooWakeup$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/android/agoo/service/AgooWakeup$1;->start()V

    return-void
.end method
