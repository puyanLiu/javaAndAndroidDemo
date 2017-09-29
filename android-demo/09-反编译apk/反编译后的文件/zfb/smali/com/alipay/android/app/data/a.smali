.class final Lcom/alipay/android/app/data/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/data/BizDataSource;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/BizDataSource;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/android/app/data/a;->a:Lcom/alipay/android/app/data/BizDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/data/a;->a:Lcom/alipay/android/app/data/BizDataSource;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->f()V

    .line 131
    return-void
.end method
