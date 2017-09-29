.class public Lcom/alipay/android/app/data/MspBizUnit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/BizDataUnit;


# instance fields
.field private a:Lcom/alipay/android/app/data/f;

.field private b:Lcom/alipay/android/app/script/IDataScriptable;

.field private c:Lcom/alipay/android/app/script/ITidScriptable;

.field private d:Lcom/alipay/android/app/data/d;

.field private e:Lcom/alipay/android/app/helper/EventUpdateScriptable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    .line 77
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    .line 78
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    .line 79
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    .line 80
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    .line 81
    return-void

    .line 72
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/data/BizData;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lcom/alipay/android/app/data/f;

    invoke-direct {v1}, Lcom/alipay/android/app/data/f;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    .line 49
    new-instance v1, Lcom/alipay/android/app/data/c;

    invoke-direct {v1}, Lcom/alipay/android/app/data/c;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    .line 50
    new-instance v1, Lcom/alipay/android/app/data/EventTidScriptable;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/data/EventTidScriptable;-><init>(Lcom/alipay/android/app/data/DataSource;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    .line 51
    new-instance v1, Lcom/alipay/android/app/data/d;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/data/d;-><init>(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/app/data/InteractionData;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    .line 53
    new-instance v1, Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/helper/EventUpdateScriptable;-><init>(Lcom/alipay/android/app/data/DataProcessor;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/EventUpdateScriptable;->a(Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;)V

    .line 56
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    .line 58
    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    .line 65
    return-void
.end method
