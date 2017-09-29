.class final Lcom/alipay/android/phone/a/a/n;
.super Ljava/lang/Object;
.source "ServerRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/a/a/m;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/a/a/m;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    iput-object p2, p0, Lcom/alipay/android/phone/a/a/n;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/phone/a/a/n;->c:I

    iput p4, p0, Lcom/alipay/android/phone/a/a/n;->d:I

    iput-object p5, p0, Lcom/alipay/android/phone/a/a/n;->e:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 94
    new-instance v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;

    invoke-direct {v3}, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/n;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->query:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->actionSrc:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->sessionId:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "searchbutton"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->searchSrc:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->location:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/alipay/android/phone/a/a/n;->c:I

    iput v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->size:I

    .line 101
    iget v0, p0, Lcom/alipay/android/phone/a/a/n;->d:I

    iput v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->start:I

    .line 102
    const-string/jumbo v0, "DEBUG"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->trace:Ljava/lang/String;

    .line 103
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->queryIndex:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/n;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->groupIn:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/m;->a(Lcom/alipay/android/phone/a/a/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->searchParams:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "android"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->clientOs:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->clientVersion:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/m;->b(Lcom/alipay/android/phone/a/a/m;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->birdParams:Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    .line 110
    const-string/jumbo v0, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "keyword : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/phone/a/a/n;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , groupIn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/phone/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , searchParam : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    invoke-static {v4}, Lcom/alipay/android/phone/a/a/m;->a(Lcom/alipay/android/phone/a/a/m;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , size : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/phone/a/a/n;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , session : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    iget-object v4, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-wide/16 v4, 0x0

    .line 114
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 115
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->e()Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;->search(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;)Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;

    move-result-object v1

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 117
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get SearchResult : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultCode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v0, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "server return query : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " , curreatWord : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", drop this result"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_1
    const-string/jumbo v0, "server"

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/a/a/j;

    .line 132
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    invoke-static {v2, v1}, Lcom/alipay/android/phone/a/a/m;->a(Lcom/alipay/android/phone/a/a/m;Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;)V

    .line 133
    const-string/jumbo v2, "jiushi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cost : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/alipay/android/phone/a/a/n;->a:Lcom/alipay/android/phone/a/a/m;

    invoke-static {v2}, Lcom/alipay/android/phone/a/a/m;->a(Lcom/alipay/android/phone/a/a/m;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    iget v3, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->start:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/a/a/j;->a(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;ZIJ)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method
