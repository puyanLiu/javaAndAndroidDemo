.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;
.super Ljava/lang/Object;
.source "APAnnouncementView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$5(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$6(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;II)V

    .line 90
    return-void
.end method
