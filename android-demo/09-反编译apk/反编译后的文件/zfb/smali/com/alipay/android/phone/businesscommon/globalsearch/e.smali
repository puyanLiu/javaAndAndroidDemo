.class final Lcom/alipay/android/phone/businesscommon/globalsearch/e;
.super Ljava/lang/Object;
.source "GlobalSearchServiceImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v1, "app"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearchApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v3, "publicplatform"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v2

    iput-wide v0, v2, Lcom/alipay/android/phone/a/d/c;->p:J

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/a/d/c;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v3, "message_box"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v2

    iput-wide v0, v2, Lcom/alipay/android/phone/a/d/c;->q:J

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/a/d/c;->s:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v3, "coupon"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 144
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v2

    iput-wide v0, v2, Lcom/alipay/android/phone/a/d/c;->t:J

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/a/d/c;->v:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :goto_2
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 151
    return-void

    .line 126
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
