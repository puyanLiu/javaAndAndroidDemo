.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;
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
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;->c()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->hideAnnoucement()V

    .line 67
    return-void
.end method
