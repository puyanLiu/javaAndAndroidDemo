.class public Lcom/ali/user/mobile/LaunchInit;
.super Ljava/lang/Object;
.source "LaunchInit.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportDeviceService;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportDeviceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/report/ReportDeviceService;->reportDeviceInfo()V

    .line 26
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportLocationService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/report/ReportLocationService;->reportLocation(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    :cond_0
    return-void
.end method
