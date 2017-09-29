.class final Lcom/alipay/android/phone/home/manager/r;
.super Ljava/lang/Object;
.source "RecommandOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/r;->a:Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/r;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/r;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 115
    return-void
.end method
