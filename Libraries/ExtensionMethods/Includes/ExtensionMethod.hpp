#ifndef F99B81CB_1C5F_4562_AEF4_6E505139B878
#define F99B81CB_1C5F_4562_AEF4_6E505139B878

namespace Magudali::Helpers
{
  template <typename TObject, typename TReturn = void>
  struct ExtensionMethod
  {
      inline ExtensionMethod& operator-() const noexcept
      {
        return *this;
      }

      template <typename TBase>
      inline TReturn operator()(TBase& base_object) const noexcept
      {
        return static_cast<TObject*>(this)->operator()(base_object);
      }
  };

  template <typename TDerived>
  struct Extendible
  {
      template <typename TBase, typename TReturn>
      inline TReturn operator<(ExtensionMethod<TBase, TReturn>& extension_method) const noexcept
      {
        return extension_method(static_cast<TDerived&>(*this));
      }
  };
} // namespace Magudali::Helpers

#endif /* F99B81CB_1C5F_4562_AEF4_6E505139B878 */
