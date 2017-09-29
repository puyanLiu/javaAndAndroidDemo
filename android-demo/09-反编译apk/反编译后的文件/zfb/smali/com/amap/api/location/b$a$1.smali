.class Lcom/amap/api/location/b$a$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/amap/api/location/b;

.field final synthetic b:Lcom/amap/api/location/AMapLocation;

.field final synthetic c:Lcom/amap/api/location/b$a;


# direct methods
.method constructor <init>(Lcom/amap/api/location/b$a;Lcom/amap/api/location/b;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/b$a$1;->c:Lcom/amap/api/location/b$a;

    iput-object p2, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iput-object p3, p0, Lcom/amap/api/location/b$a$1;->b:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v3, p0, Lcom/amap/api/location/b$a$1;->b:Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v4, "base"

    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-virtual {v2, v3, v4, v0}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v3, p0, Lcom/amap/api/location/b$a$1;->b:Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v4, "all"

    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-virtual {v2, v3, v4, v0}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/location/b$a$1;->a:Lcom/amap/api/location/b;

    iget-object v0, v0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
