.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;
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
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    div-int/lit16 v0, v0, 0x3e8

    .line 75
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)I

    move-result v2

    sub-int v0, v2, v0

    .line 76
    if-gez v0, :cond_0

    move v0, v1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$3(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->access$4(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->hideAnnoucement()V

    goto :goto_0
.end method
