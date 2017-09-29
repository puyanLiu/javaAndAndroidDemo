.class final Lcom/alipay/android/phone/home/user/ui/e;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/d;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/e;->a:Lcom/alipay/android/phone/home/user/ui/d;

    iput-object p2, p0, Lcom/alipay/android/phone/home/user/ui/e;->b:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/e;->a:Lcom/alipay/android/phone/home/user/ui/d;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/d;->a(Lcom/alipay/android/phone/home/user/ui/d;)Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b:Lcom/alipay/android/phone/home/user/ui/UserContainer;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserContainer;->setMemberGrade(Ljava/lang/String;)V

    .line 283
    return-void
.end method
