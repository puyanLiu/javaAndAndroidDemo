.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;
.super Ljava/lang/Object;
.source "APAnnouncementView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;->a()V

    .line 300
    :cond_0
    return-void
.end method
