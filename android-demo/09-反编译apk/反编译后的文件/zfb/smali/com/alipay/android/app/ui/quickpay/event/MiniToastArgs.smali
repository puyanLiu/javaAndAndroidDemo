.class public Lcom/alipay/android/app/ui/quickpay/event/MiniToastArgs;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 17
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniToastArgs;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniToastArgs;->a:Ljava/lang/String;

    return-object v0
.end method
