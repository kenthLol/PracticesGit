#ifndef E90A42BD_6656_49A0_8D29_83DF357ADA2A
#define E90A42BD_6656_49A0_8D29_83DF357ADA2A

#ifndef HTML_INDENTATION
# define HTML_INDENTATION 2
#endif

#ifndef HTML_ENDLINE
# define HTML_ENDLINE "\n"
#endif

#include <string>
#include <string_view>
#include <vector>
#include <ostream>
#include <sstream>

#include "Attribute.hpp"

namespace Html
{
  class Element
  {
      friend std::ostream& operator<<(std::ostream& stream, const Element& element) noexcept;

    public:
      explicit Element(const std::string_view tag_name, const std::string_view tag_content = "") noexcept;

      Element&& AddAttribute(const std::string_view name, const std::string_view value) noexcept;
      Element&& AddAttribute(const std::string_view name, const uint64_t value) noexcept;

      Element&& operator<<(Element&& element);

    protected:
      // Constructor reserved for the Root \<html\> Element as well as the Empty
      Element() noexcept;

      std::ostream& ToString(std::ostream& stream, const size_t indentation = 0) const noexcept;

    private:
      void StringOpen(std::ostream& stream, const size_t indentation) const noexcept;
      void StringContent(std::ostream& stream, const size_t indentation) const noexcept;
      void StringClose(std::ostream& stream, const size_t indentation) const noexcept;

    protected:
      std::string            m_TagName;
      std::string            m_TagContent;
      std::vector<Attribute> m_Attributes;
      std::vector<Element>   m_Children;

      // Self-closing elements complete list:
      // <br> <hr> <img> <input> <link> <meta> <col>
      // <area> <base> <command> <embed> <keygen> <param> <source> <track> <wbr>
      bool                   m_TagVoid;
  };

  inline std::ostream& operator<<(std::ostream& stream, const Element& element) noexcept
  {
    return element.ToString(stream);
  }
} // namespace Html

namespace std
{
  inline constexpr std::string_view to_string(const bool value) noexcept
  {
    return value ? "true" : "false";
  }

  inline std::string to_string(const Html::Element& element) noexcept
  {
    std::ostringstream stream;
    stream << element;
    return stream.str();
  }

} // namespace std

#endif /* E90A42BD_6656_49A0_8D29_83DF357ADA2A */
