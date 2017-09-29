.class public abstract Lorg/androidannotations/api/sharedpreferences/EditorHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/EditorHelper",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected booleanField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/BooleanPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/BooleanPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/BooleanPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/BooleanPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public final clear()Lorg/androidannotations/api/sharedpreferences/EditorHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method protected floatField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/FloatPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/FloatPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/FloatPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/FloatPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->a:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method protected intField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/IntPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/IntPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/IntPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/IntPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method protected longField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/LongPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/LongPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/LongPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/LongPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method protected stringField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/StringPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/StringPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/StringPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/StringPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method protected stringSetField(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/StringSetPrefEditorField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/StringSetPrefEditorField",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/androidannotations/api/sharedpreferences/StringSetPrefEditorField;

    invoke-direct {v0, p0, p1}, Lorg/androidannotations/api/sharedpreferences/StringSetPrefEditorField;-><init>(Lorg/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-object v0
.end method
