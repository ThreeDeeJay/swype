.class public Landroid/support/v7/widget/AppCompatCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "AppCompatCheckedTextView.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 51
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 52
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 54
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    iget-object v1, v0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_c

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 85
    :cond_c
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_13

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2181
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_12
    return-void

    .line 67
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_12
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 77
    :cond_c
    return-void
.end method
