.class public abstract Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
.super Lcom/alipay/android/app/base/pay/IActivityAdapter;

# interfaces
.implements Lcom/alipay/android/app/sys/IShower;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/android/app/base/pay/IActivityAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
.end method

.method public abstract a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract a([Ljava/lang/String;)V
.end method

.method public abstract b(I)V
.end method

.method public abstract c()V
.end method

.method public abstract d()Landroid/app/Activity;
.end method

.method public e()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public abstract g()Landroid/view/View;
.end method
