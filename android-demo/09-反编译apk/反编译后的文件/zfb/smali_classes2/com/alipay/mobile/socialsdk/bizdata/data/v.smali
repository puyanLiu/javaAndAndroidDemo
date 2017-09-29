.class final Lcom/alipay/mobile/socialsdk/bizdata/data/v;
.super Ljava/lang/Object;
.source "SocialQueryListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/u;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/u;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/u;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->d:Z

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/u;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a(Lcom/alipay/mobile/socialsdk/bizdata/data/u;Ljava/util/List;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method
