.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

.field private final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->val$b:Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;)Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->val$b:Z

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Z)V

    .line 70
    return-void
.end method
