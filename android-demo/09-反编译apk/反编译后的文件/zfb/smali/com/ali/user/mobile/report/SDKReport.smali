.class public Lcom/ali/user/mobile/report/SDKReport;
.super Ljava/lang/Object;
.source "SDKReport.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportInfo(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/ali/user/mobile/report/SDKReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportDeviceService;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/report/ReportDeviceService;->reportDeviceInfo()V

    .line 17
    return-void
.end method
