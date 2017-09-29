.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->checkHasMoreNotify()V

    .line 542
    return-void
.end method
