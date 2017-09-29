.class public Lcom/alipay/android/app/ui/quickpay/event/MiniGuideEventArgs;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Guide:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 22
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniGuideEventArgs;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniGuideEventArgs;->a:Ljava/lang/String;

    return-object v0
.end method
